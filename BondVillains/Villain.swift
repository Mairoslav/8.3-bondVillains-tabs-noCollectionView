//
//  Villain.swift
//  BondVillains
//
//  Created by Jason on 11/19/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Villain

struct Villain {
    
    // MARK: Properties
    
    let name: String
    let evilScheme: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilScheme"
    static let ImageNameKey = "ImageNameKey"
    
    // MARK: Initializer
    
    // Generate a Villain from a three entry dictionary
    
    init(dictionary: [String : String]) {
        
        self.name = dictionary[Villain.NameKey]!
        self.evilScheme = dictionary[Villain.EvilSchemeKey]!
        self.imageName = dictionary[Villain.ImageNameKey]!
    }
}

// MARK: - Villain (All Villians)

/**
 * This extension adds static variable allVillains. An array of Villain objects
 */

extension Villain {
    
    // Generate an array full of all of the villains in
    static var allVillains: [Villain] {
        
        var villainArray = [Villain]()
        
        for d in Villain.localVillainData() {
            villainArray.append(Villain(dictionary: d))
        }
        
        return villainArray
    }
    
    static func localVillainData() -> [[String : String]] {
        return [
            [Villain.NameKey : "Bigis", Villain.EvilSchemeKey : "Smuggle herion.",  Villain.ImageNameKey : "Big"],
            [Villain.NameKey : "Ernest", Villain.EvilSchemeKey : "Many, many, schemes.",  Villain.ImageNameKey : "Blofeld"],
            [Villain.NameKey : "Hugo", Villain.EvilSchemeKey : "Nerve gass Earth, from the Moon.",  Villain.ImageNameKey : "Drax"],
            [Villain.NameKey : "Jaws", Villain.EvilSchemeKey : "Kill Bond with huge metal teeth.",  Villain.ImageNameKey : "Jaws"],
            [Villain.NameKey : "Rosa", Villain.EvilSchemeKey : "Humiliate MI6",  Villain.ImageNameKey : "Klebb"],
            [Villain.NameKey : "Emilio", Villain.EvilSchemeKey : "Steal nuclear weapons", Villain.ImageNameKey : "EmilioLargo"],
            [Villain.NameKey : "Le Chi", Villain.EvilSchemeKey : "Beat bond at poker.",  Villain.ImageNameKey : "Lechiffre"],
            [Villain.NameKey : "Odd", Villain.EvilSchemeKey : "Kill Bond with razor hat.",  Villain.ImageNameKey : "OddJob"],
            [Villain.NameKey : "Franci", Villain.EvilSchemeKey : "Kill Bond after assembling a golden gun.",  Villain.ImageNameKey : "Scaramanga"],
            [Villain.NameKey : "Raoul", Villain.EvilSchemeKey : "Kill M.",  Villain.ImageNameKey : "Silva"],
            [Villain.NameKey : "Alec", Villain.EvilSchemeKey : "Nuke London, after killing Bond.",  Villain.ImageNameKey : "Trevelyan"],
            [Villain.NameKey : "Auric", Villain.EvilSchemeKey : "Nuke Fort Knox.",  Villain.ImageNameKey : "Goldfinger"],
            [Villain.NameKey : "Max", Villain.EvilSchemeKey : "Destroy Silicon Valley with an earthquake and flood.",  Villain.ImageNameKey : "Zorin"]
        ]
    }
}
