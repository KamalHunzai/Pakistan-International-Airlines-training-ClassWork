//
//  House.swift
//  CoreDataDemo
//
//  Created by Admin on 30/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import Foundation
import CoreData

class House: NSManagedObject {

    @NSManaged var adress: String
    @NSManaged var rooms: Int16
    @NSManaged var users: House

}
