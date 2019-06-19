//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var author = "Allison"
    var location = " "
    var distanceTraveled = 0.0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    var numGallon = 0.0
    var data = AviatrixData()
    
    init(authorName : String) {
        author = authorName
    }

    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel(fuelLevel : Int) -> Int {
        numGallon = Double(maxFuel) - Double(fuelLevel)
        fuelCost = milesPerGallon * Double(distanceTraveled)
        
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target : destination, current : location)
        
        fuelLevel -= distanceTraveled / milesPerGallon
        location = destination
        
    }
    
    
    func distanceTo(target : String, current : String) -> Int {
        return data.knownDistances[current]! [target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
