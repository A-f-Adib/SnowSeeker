//
//  Facility.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 20/10/24.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String
    
    private let icons = [
        "Accommodation" : "house",
        "Beginners" : "1.circle",
        "Cross-country" : "map",
        "Eco-friendly" : "leaf.arrow.circlepath",
        "Family": "person.3"
    ]
    
    private let description = [
        "Accommodation" : "This resort has popular on-site accomodation.",
        "Beginners" : "This resort has lots of ski schools.",
        "Cross-country" : "This resorts has many cross-country ski routes.",
        "Eco-friendly" : "This resort has won an award for environment friendliness",
        "Family": "This resort is popular with families"
    ]
    
    var icon: some View {
        if let iconName = icons[name] {
            Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundStyle(.secondary)
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
}
