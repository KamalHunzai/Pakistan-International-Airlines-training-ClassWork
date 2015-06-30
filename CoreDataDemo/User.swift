//
//  User.swift
//  CoreDataDemo
//
//  Created by Admin on 30/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import Foundation
import CoreData

class User: NSManagedObject {

    @NSManaged var age: NSDate
    @NSManaged var name: String
    @NSManaged var image: NSData
    @NSManaged var view: AnyObject
    @NSManaged var houses: NSOrderedSet

}
