//
//  UserViewModel.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Combine
import Foundation
import SwiftUI

class UserViewModel: ObservableObject {
    private let service: UserServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    @Published var users = [UserData]()
    
    init(_ service: UserServiceProtocol) {
        self.service = service
        self.getUsers()
    }
}

// MARK: - Service

extension UserViewModel {
    func getUsers() {
        service.getUsers().sink { status in
            switch status {
            case .finished:
                break
            case .failure(_):
                break
            }
        } receiveValue: { result in
            self.users = result.data
        }.store(in: &cancellables)
    }
}
