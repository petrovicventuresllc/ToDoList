//
//  RoundedButton.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 12/20/25.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable
    var background: UIColor = .link{
        didSet {
            backgroundColor = background
            setNeedsLayout()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        //titleLabel?.font = UIFont.style(.buttonTitle)
        backgroundColor = background
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 5
    }

}
