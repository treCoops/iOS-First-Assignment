//
//  UITextFieldLine.swift
//  iOS Assignment 1
//
//  Created by treCoops on 7/16/20.
//  Copyright © 2020 treCoops. All rights reserved.
//

import UIKit

class UITextFieldLine: UITextField {

    @IBInspectable var linesWidth: CGFloat = 1.0 { didSet{ drawLines() } }

    @IBInspectable var linesColor: UIColor = UIColor.white { didSet{ drawLines() } }

    @IBInspectable var leftLine: Bool = false { didSet{ drawLines() } }
    @IBInspectable var rightLine: Bool = false { didSet{ drawLines() } }
    @IBInspectable var bottomLine: Bool = false { didSet{ drawLines() } }
    @IBInspectable var topLine: Bool = false { didSet{ drawLines() } }



    func drawLines() {

        if bottomLine {
            add(line: CGRect(x: 0.0, y: frame.size.height - linesWidth, width: frame.size.width, height: linesWidth))
        }

        if topLine {
            add(line: CGRect(x: 0.0, y: 0.0, width: frame.size.width, height: linesWidth))
        }

        if rightLine {
            add(line: CGRect(x: frame.size.width - linesWidth, y: 0.0, width: linesWidth, height: frame.size.height))
        }

        if leftLine {
            add(line: CGRect(x: 0.0, y: 0.0, width: linesWidth, height: frame.size.height))
        }

    }

    typealias Line = CGRect
    private func add(line: Line) {
        let border = CALayer()
        border.frame = line
        border.backgroundColor = linesColor.cgColor
        layer.addSublayer(border)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        drawLines()
    }

}

