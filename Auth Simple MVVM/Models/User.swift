//
//  User.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 01.06.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "Artur", password: "123456")
    ]
}
