//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 19/10/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker")
                .font(.largeTitle)
            Text("Please select a resort from the right hand menu, swipe from the edge to show it.")
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    WelcomeView()
}
