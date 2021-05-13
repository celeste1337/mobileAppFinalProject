//
//  Entity+CoreDataProperties.swift
//  mobileAppFinalProject
//
//  Created by student on 5/12/21.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }


}

extension Entity : Identifiable {

}
