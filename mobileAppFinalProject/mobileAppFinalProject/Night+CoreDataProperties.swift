//
//  Night+CoreDataProperties.swift
//  mobileAppFinalProject
//
//  Created by student on 5/12/21.
//
//

import Foundation
import CoreData


extension Night {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Night> {
        return NSFetchRequest<Night>(entityName: "Night")
    }

    @NSManaged public var timeStart: Date?
    @NSManaged public var timeEnd: Date?
    @NSManaged public var drinks: NSObject?
    @NSManaged public var waters: NSObject?

}

extension Night : Identifiable {

}
