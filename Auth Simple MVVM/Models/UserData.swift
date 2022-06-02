//
//  UserData.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 02.06.2022.
//

import Foundation

struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Artur",
                                   city: "Surgut",
                                   email: "artur.dohno@icloud.com",
                                   phone: "8(996)446-17-91")
}
