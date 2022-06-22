//
//  Bill.swift
//  Splito
//
//  Created by Shahid Latif on 22/06/2022.
//

import CoreDataManager
import CoreData

open class Bill: NSManagedObject {
    @NSManaged open var numberOfPeople: NSNumber
    @NSManaged open var totalBill: NSNumber
}
