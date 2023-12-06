//
//  UserModel.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation

struct UserModel: Hashable, Codable {
    var page, perPage, total, totalPages: Int
    var data: [UserData]
    var support: Support

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}

// MARK: - UserData
struct UserData: Hashable, Codable {
    var id: Int?
    var email, firstName, lastName: String
    var avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Hashable, Codable {
    var url: String?
    var text: String?
}
