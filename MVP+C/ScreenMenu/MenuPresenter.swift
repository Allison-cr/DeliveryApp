//
//  MainPresenter.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation

protocol IMenuPresenter: AnyObject {
    func loadData()
    func tupButtonAdd()
}

final class MenuPresenter: IMenuPresenter {
    private var clouser: EmptyClosure?
    weak var viewController: IMenuViewController?
    
    init(clouser: EmptyClosure?) {
        self.clouser = clouser
    }
    
    func loadData() {
        let model = MokData().categoryModel()
        let filter = MokData().categoryFilter()
        viewController?.viewReady(model: model, filter: filter)
    }
    
    
    func tupButtonAdd() {
        clouser?()
    }
}
