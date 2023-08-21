//
//  User.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 01.07.2023.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    let id = NSUUID().uuidString
    let fullname: String
    let numberPhone: String
    var profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullname: "Artemy Fillman", numberPhone: "+7(953)364-12-27", profileImageUrl: "Photo")
}
