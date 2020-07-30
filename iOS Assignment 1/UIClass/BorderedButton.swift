//
//  BorderedButton.swift
//  iOS Assignment 1
//
//  Created by treCoops on 7/16/20.
//  Copyright © 2020 treCoops. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {

  override init(frame: CGRect) {
      super.init(frame: frame)
      setupButton()
  }
  
  
  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      setupButton()
  }
  
  
  private func setupButton() {
     layer.borderWidth = 2;
     layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
     layer.cornerRadius  = frame.size.height/2
  }

}
