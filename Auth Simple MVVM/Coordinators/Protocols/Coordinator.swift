//
//  Coordinator.swift
//  Auth Simple MVVM
//
//  Created by Артур Дохно on 02.06.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
