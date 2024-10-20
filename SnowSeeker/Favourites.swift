//
//  Favourites.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 21/10/24.
//

import SwiftUI

@Observable
class Favourites {
    private var resorts : Set<String>
    private var key = "Favourites"
    
    init() {
        resorts = []
        
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort ) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        
    }
}
