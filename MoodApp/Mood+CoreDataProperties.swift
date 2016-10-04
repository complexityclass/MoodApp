//
//  Mood+CoreDataProperties.swift
//  MoodApp
//
//  Created by Valeriy Popov on 04/10/2016.
//  Copyright © 2016 Valeriy Popov. All rights reserved.
//

import Foundation
import CoreData


extension Mood {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mood> {
        return NSFetchRequest<Mood>(entityName: "Mood");
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var colors: NSObject?

}
