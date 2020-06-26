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
    
    static var numberOfClicks : Int = 0
    static var numberPlayLoads : Int = 0
    static var name : String = "Fernando"
    
    static func SaveData()
    {
        
        
//        // Create data to be saved
        var myString : String = ""
        myString = String(SaveDataID.name) + "," + name + "\n"
        myString.append(String(SaveDataID.numberOfClicks) + "," + String(numberOfClicks) + "\n")
        myString = myString + String(SaveDataID.numberPlayLoads) + "," + String(numberPlayLoads)

        
        //myString.split(separator: ",")
        let data = myString.data(using: .utf8)
        
        
        
//        guard let data = myString.data(using: .utf8) else {
//            print("Unable to convert string to data")
//            return
//        }
    
        
        // Save the data
        do {
         try data?.write(to: fileURL)
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
            print("******")
            for line in savedString.split(separator: "\n")
            {
                print(line)
                
//                print("------")
//                for element in line.split(separator: ",")
//                {
//                    print(element)
//
//
//
//                }
//                print("------")
                
                let procStr = line.split(separator: ",")
                
                if(Int(procStr[0]) == SaveDataID.name)
                {
                    SavedDataManager.name = String(procStr[1])
                }
                else if(Int(procStr[0]) == SaveDataID.numberOfClicks)
                {
                    SavedDataManager.numberOfClicks = Int(String(procStr[1]))!
                }
                else if(Int(procStr[0]) == SaveDataID.numberPlayLoads)
                {
                    SavedDataManager.numberPlayLoads = Int(String(procStr[1]))!
                }
                
                
            }
            print("******")
            
         }
        } catch {
         // Catch any errors
         print("Unable to read the file")
        }
        
    }
    
}

class SaveDataID
{
    static let numberOfClicks : Int = 1
    static let numberPlayLoads : Int = 2
    static let name : Int = 3
}

