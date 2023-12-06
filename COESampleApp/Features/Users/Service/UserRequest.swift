//
//  UserRequest.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation
import NetworkInterface

enum UserRequest: Request {
    
    case getUsers
    
    /// `HTTPMethod` of the request
    var method: HTTPMethod { .get }
    
    /// `Base URL`
    var baseURLString: String { "https://reqres.in/" }
    
    /// `End Point` of the api
    var endPoint: String { "api/users?page=1" }
    
    /// `Request Body` to be send
    func body() throws -> Data? {
        nil
    }
    
    /// `Api's Headers` to be send
    func headers() -> [String : String] {
        [
            .contentType: .applicationJSON
        ]
    }
}
