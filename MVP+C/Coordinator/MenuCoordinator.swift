//
//  MenuCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

final class MenuCoordinator: ICoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        runMenuFlow()
    }
    
    func runMenuFlow() {
        let viewController = MenuBuilder().assembly { [weak self] in
            self?.runCardView()
        }
        navigationController.isNavigationBarHidden = true
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    func runCardView() {
        let viewController = CardBuilder().assembly() {  [weak self]  in
            self?.navigationController.popViewController(animated: true)
        }
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(viewController, animated: true)
    }
}
