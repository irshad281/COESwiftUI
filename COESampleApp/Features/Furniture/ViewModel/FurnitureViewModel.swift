//
//  FurnitureViewModel.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Combine
import Foundation
import SwiftUI

class FurnitureViewModel: ObservableObject {
    private let service: ProductServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    @Published var categories = [Category]()
    @Published var products = [Product]()
    @Published var sections = ["Popular", "Recommneded", "Most Bought", "Trending"]
    @Published var selectedCategory: String = ""
    
    init(_ service: ProductServiceProtocol) {
        self.service = service
        
        self.getCategories()
    }
}

// MARK: - Service

extension FurnitureViewModel {
    func getCategories() {
        service.getProductCategories().sink { status in
            switch status {
            case .finished:
                break
            case .failure(_):
                break
            }
        } receiveValue: { categories in
            self.selectedCategory = (categories.first ?? "").capitalized
            self.categories = categories.map({ Category(title: $0.capitalized) })
            self.getProductsByCategory()
        }.store(in: &cancellables)
    }
    
    func getProductsByCategory() {
        service.getProductsByCategory(selectedCategory.lowercased()).sink { status in
            switch status {
            case .finished:
                break
            case .failure(_):
                break
            }
        } receiveValue: { products in
            self.products = products
        }.store(in: &cancellables)
    }
}
