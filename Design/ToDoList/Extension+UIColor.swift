//
//  Colors.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 12/6/25.
//

import Foundation
import UIKit

extension UIColor {
    
    static var categoryWork: UIColor {
        return UIColor(named: "work") ?? .systemBlue
    }
    
    static var secondaryWork: UIColor {
        return UIColor(named: "work")!.withAlphaComponent(0.2)
    }
    
    static var categoryExercise: UIColor {
        return UIColor(named: "exercise") ?? .systemGreen
    }
    
    static var secondaryExercise: UIColor {
        return UIColor(named: "exercise")!.withAlphaComponent(0.2)
    }
    
    static var categoryStudy: UIColor {
        return UIColor(named: "study") ?? .systemOrange
    }
    
    static var secondaryStudy: UIColor {
        return UIColor(named: "study")!.withAlphaComponent(0.2)
    }
    
}
