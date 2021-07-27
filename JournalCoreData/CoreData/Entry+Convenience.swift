//
//  Entry+Convenience.swift
//  JournalCoreData
//
//  Created by Kyle Franklin on 7/26/21.
//

import Foundation
import CoreData

extension Entry {
    
    
    @discardableResult
    convenience init(title: String, bodyText: String, timeStamp: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title
        self.timeStamp = timeStamp
    }
}
