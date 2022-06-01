//
//  ViewController.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var statusLabel: UILabel!
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
       print("Artur IOS Developer")
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
    }
}

