//
//  ManagedObjectContextSettable.swift
//  MoodApp
//
//  Created by Valeriy Popov on 04/10/2016.
//  Copyright © 2016 Valeriy Popov. All rights reserved.
//

import Foundation
import CoreData

protocol ManagedObjectContextSettable {
    var managedObjectContext: NSManagedObjectContext! {get set}
}
