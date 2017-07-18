//
//  CoreDataHelper.swift
//  
//
//  Created by Helen Cao on 7/14/17.
//
//


import CoreData
import UIKit

class CoreDataHelper {

    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let persistentContainer = appDelegate.persistentContainer
    static let managedContext = persistentContainer.viewContext
    //static methods will go here
    
    static func preferenceObj() -> Preferences {
        let preference  = NSEntityDescription.insertNewObject(forEntityName: "Preferences", into: managedContext) as! Preferences
        preference.group = false
        preference.individual = false
        return preference
    }
    
    static func saveData(){
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
    
    static func deletePreference(deleteThis: Preferences){
        managedContext.delete(deleteThis)
        saveData()
    }
    static func retrieveIndividualData() -> [Preferences]{
        let fetchRequest = NSFetchRequest<Preferences>(entityName: "Preferences")
        do{
            let results = try managedContext.fetch(fetchRequest)
            return results
        } catch let error as NSError{
            print("could not fetch \(error)")
        }
        return []
    }
    
    
    
    
}
