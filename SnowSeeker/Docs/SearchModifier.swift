//
//  SearchModifier.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 13/10/24.
//

import SwiftUI

struct SearchModifier: View {
    
    @State private var searchText = ""
    
    let allNames = ["Subh", "Vina", "Melvin", "Jack"]
    
    var filterNames : [String] {
        if searchText.isEmpty {
            allNames
        } else {
            allNames.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
//            Text("Searching for \(searchText)")
            List(filterNames, id: \.self) { name in 
                Text(name)
            }
                .searchable(text: $searchText, prompt: "Search Here")
                .navigationTitle("Searching")
        }
    }
}

#Preview {
    SearchModifier()
}
