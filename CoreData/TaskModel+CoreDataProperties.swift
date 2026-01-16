//
//  TaskModel+CoreDataProperties.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 1/15/26.
//
//

import Foundation
import CoreData


extension TaskModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskModel> {
        return NSFetchRequest<TaskModel>(entityName: "TaskModel")
    }

    @NSManaged public var category: String
    @NSManaged public var caption: String
    @NSManaged public var createdDate: Date
    @NSManaged public var isComplete: Bool

}

extension TaskModel : Identifiable {

}
