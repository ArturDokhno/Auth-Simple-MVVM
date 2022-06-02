//
//  ViewModel.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 01.06.2022.
//

import UIKit

class LoginViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    var isLoggedIn = false
    
    func userButtonPressed(login: String, password: String) {
        if login == User.logins[0].login && password == User.logins[0].password {
            statusText.value = "You successfully logged in"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            isLoggedIn = true
        } else {
            statusText.value = "Login failed"
            statusColor.value = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
}
