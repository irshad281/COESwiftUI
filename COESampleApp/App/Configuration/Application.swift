//
//  App.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 21/11/23.
//

import Combine
import Foundation
import NetworkInterface
import UIKit

typealias Completion = () -> Void
typealias Response<T: Codable> = Future<T, RequestError>

enum Application {
    static var baseUrl: String { AppConfigViewModel.shared.baseUrl }
    
    static func configure() {
        
    }
}
