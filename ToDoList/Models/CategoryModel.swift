//
//  CategoryModel.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 9/29/25.
//

import Foundation
import UIKit
import RealmSwift

enum Category: String, CaseIterable, PersistableEnum {
    case work = "Work", study = "Study", exercise = "Exercise"
    
    var color: UIColor {
        switch self {
        case .work:
            return UIColor.categoryWork
        case .exercise:
            return UIColor.categoryExercise
        case .study:
            return UIColor.categoryStudy
        }
    }
    var secondaryColor: UIColor {
        switch self {
        case .work:
            return UIColor.secondaryWork
        case .exercise:
            return UIColor.secondaryExercise
        case .study:
            return UIColor.secondaryStudy
        }
    }
    
}
