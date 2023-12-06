//
//  UserService.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Combine
import Foundation
import NetworkInterface

protocol UserServiceProtocol {
    func getUsers() -> Response<UserModel>
}

struct UserService: UserServiceProtocol {
    @discardableResult
    func getUsers() -> Response<UserModel> {
        NetworkInterface.performRequest(UserRequest.getUsers)
    }
}
