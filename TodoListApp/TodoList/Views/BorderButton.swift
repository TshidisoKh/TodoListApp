//
//  BorderButton.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/15.
//

import Foundation

class BorderButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        style()
        
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 10
        backgroundColor = .gray
        tintColor = .white
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        style()
    }
    
    private func style() {
        self.layer.borderColor = self.tintColor.cgColor
    }
    
}
