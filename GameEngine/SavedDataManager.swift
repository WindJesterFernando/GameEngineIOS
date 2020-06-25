//
//  SavedDataManager.swift
//  GameEngine
//
//  Created by Fernando  Restituto on 2020-06-25.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation

class SavedDataManager
{

    static let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]

    static var fileURL : URL = URL(fileURLWithPath: "TestSaveFile", relativeTo: SavedDataManager.directoryURL).appendingPathExtension("txt")
    
    static func SaveData()
    {
        
        // Create data to be saved
        let myString = "Test Save Data"
        guard let data = myString.data(using: .utf8) else {
            print("Unable to convert string to data")
            return
        }
        // Save the data
        do {
         try data.write(to: fileURL)
         print("File saved: \(fileURL.absoluteURL)")
        } catch {
         // Catch any errors
         print(error.localizedDescription)
        }
        
    }
    
    static func LoadData()
    {
        
        do {
         // Get the saved data
         let savedData = try Data(contentsOf: fileURL)
         // Convert the data back into a string
         if let savedString = String(data: savedData, encoding: .utf8) {
            print(savedString)
         }
        } catch {
         // Catch any errors
         print("Unable to read the file")
        }
        
    }
    
}
