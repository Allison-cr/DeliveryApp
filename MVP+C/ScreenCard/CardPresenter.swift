//
//  CardPresenter.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

protocol ICardPresenter: AnyObject {
    func popViewController()
    func addProductBasket()
    func loadData()
}

final class CardPresenter: ICardPresenter {
    private var clouser: EmptyClosure?
    weak var viewController: ICardViewController?
    
    init(clouser: EmptyClosure?) {
        self.clouser = clouser
    }
    
    func popViewController() {
        clouser?()
    }
    
    func addProductBasket() {
        // Добавить в корзину
    }
    
    func loadData() {
        let model = MokData().cardModel()
        viewController?.viewReady(model: model)
    }
}
