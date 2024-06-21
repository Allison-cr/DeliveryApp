//
//  UIView+.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import UIKit

extension UIView {
    func applySeparatorLineVerticalView() {
        self.widthAnchor.constraint(equalToConstant: 1).isActive = true
        self.backgroundColor = UIColor(resource: .footerButton)
    }
    
    func applySeparatorLineHorizontalView() {
        self.heightAnchor.constraint(equalToConstant: 1).isActive = true
        self.backgroundColor = UIColor(resource: .footerButton)
    }
}
