//
//  CardBuilder.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

final class CardBuilder {
    func assembly(clouser: EmptyClosure?) -> CardViewController {
        let viewController = CardViewController()
        let presenter = CardPresenter(clouser: clouser)
        viewController.presenter = presenter
        return viewController
    }
}

