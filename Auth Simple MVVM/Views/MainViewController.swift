//
//  MainViewController.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 02.06.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?
    
    @IBOutlet var mainLabel: UILabel! {
        didSet {
            mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
        }
    }
    @IBOutlet var button: UIButton! {
        didSet {
            button.backgroundColor = .blue
            button.tintColor = .white
            button.layer.cornerRadius = 10
            button.clipsToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
    }
    
    @IBAction func aboutButtonPressed(_ sender: UIButton) {
        coordinator?.showDetail()
    }
}
