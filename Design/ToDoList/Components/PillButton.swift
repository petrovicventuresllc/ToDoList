//
//  PillButton.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 12/20/25.
//

import UIKit

class PillButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        //titleLabel?.font = UIFont.style(.buttonTitle)
        backgroundColor = UIColor.link
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
}
