//
//  EvObject.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 13/10/24.
//

import SwiftUI


@Observable
class Player {
    var name = "User"
    var highScore = 0
}


struct HighScore : View {
    
    @Environment(Player.self) var player
    
    var body: some View {
        
        @Bindable var player = player
        Stepper("Your score is : \(player.highScore)", value: $player.highScore)
    }
}



struct EvObject: View {
    @State private var player = Player()
    
    var body: some View {
        VStack {
            Text("Welcome")
            HighScore()
        }
        .environment(player)
    }
}

#Preview {
    EvObject()
}
