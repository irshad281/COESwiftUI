//
//  ProductService.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 23/11/23.
//

import Combine
import Foundation
import NetworkInterface

protocol ProductServiceProtocol {
    func getProductCategories() -> Response<[String]>
    func getProductsByCategory(_ category: String) -> Response<[Product]>
}

struct ProductService: ProductServiceProtocol {
    
    @discardableResult
    func getProductCategories() -> Response<[String]> {
        NetworkInterface.performRequest(ProductRequest.categories)
    }
    
    @discardableResult
    func getProductsByCategory(_ category: String) -> Response<[Product]> {
        NetworkInterface.performRequest(ProductRequest.productsByCategory(category))
    }
}
