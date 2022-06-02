//
//  ViewController.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 01.06.2022.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var loginButton: UIButton! {
        didSet {
            loginButton.backgroundColor = .blue
            loginButton.tintColor = .white
            loginButton.layer.cornerRadius = 10
            loginButton.clipsToBounds = true
        }
    }
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel! .userButtonPressed(login: (loginTextField.text ?? ""),
                                    password: (passwordTextField.text ?? ""))
        if viewModel!.isLoggedIn {
            coordinator?.isLoggedIn = viewModel!.isLoggedIn
            coordinator?.showMain(login: loginTextField.text ?? "")
        }
    }
    
    func bindViewModel() {
        viewModel!.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
        viewModel!.statusColor.bind({ (statusColor) in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        })
    }
}

