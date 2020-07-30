//
//  RoundButton.swift
//  iOS Assignment 1
//
//  Created by treCoops on 7/16/20.
//  Copyright © 2020 treCoops. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        layer.cornerRadius  = frame.size.height/2
    }

}
