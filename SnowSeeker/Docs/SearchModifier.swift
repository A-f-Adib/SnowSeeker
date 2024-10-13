//
//  SearchModifier.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 13/10/24.
//

import SwiftUI

struct SearchModifier: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            Text("Searching for \(searchText)")
                .searchable(text: $searchText, prompt: "Search Here")
                .navigationTitle("Searching")
        }
    }
}

#Preview {
    SearchModifier()
}
