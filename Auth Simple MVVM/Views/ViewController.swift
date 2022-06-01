//
//  ViewController.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }

    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                print(statusText)
            }
        })
    }
}

