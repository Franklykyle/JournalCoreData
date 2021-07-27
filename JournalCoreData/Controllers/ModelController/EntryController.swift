//
//  EntryController.swift
//  JournalCoreData
//
//  Created by Kyle Franklin on 7/26/21.
//

import Foundation
import CoreData

class EntryController {
    
    static var SharedInstance: EntryController?
    
    private lazy var fetchEntry: NSFetchRequest<Entry> = {
     let request = NSFetchRequest<Entry>(entityName: "Entry")
     
     return request
    }()
    
    var entries: [Entry] = []
    
    func createEntry(title: String, bodyText: String, timeStamp: Date) {
        let entry = Entry(title: title, bodyText: bodyText, timeStamp: timeStamp)
    }
    
    func fetchEntries() {
        let entries = (try? CoreDataStack.context.fetch(fetchEntry)) ?? []
        print(entries.count)
        self.entries = entries
    }
    
}
