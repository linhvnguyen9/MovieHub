//
//  CoreData.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/30/21.
//

import Foundation
import CoreData

var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "MovieHub")
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()

func saveContext () {
    let context = persistentContainer.viewContext
    if context.hasChanges {
        do {
            try context.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
