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
    var location = "St. Louis"
    var distanceTraveled = 0.0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelPrice = 0.0
    var fuelCost = 0.0
    var intake = 0.0
    var data = AviatrixData()
    
    init(authorName : String) {
        author = authorName
    }

    
    func start() -> Bool {
        running = true
        return running
    }

    
    func refuel() {
        intake = maxFuel - fuelLevel
        maxFuel = fuelLevel
        fuelCost = distanceTraveled / milesPerGallon * data.fuelPrices[location]!
        fuelPrice = data.fuelPrices[location]!
    }
    
    func flyTo(destination : String) {
        distanceTraveled += Double(distanceTo(target : destination))
        fuelLevel -= distanceTraveled / milesPerGallon
        location = destination
        
    }

    
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
