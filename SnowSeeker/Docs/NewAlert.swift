//
//  NewAlert.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 12/10/24.
//

import SwiftUI

struct User : Identifiable {
    var id = "Taylor Swift"
}


struct NewAlert: View {
    
    @State private var selectedUser : User? = nil
    @State private var isShowing = false
    
    var body: some View {
        Button("Tap") {
            selectedUser = User()
            isShowing = true
        }
        .alert("welcome", isPresented: $isShowing, presenting: selectedUser) { user in
            Button(user.id) { }
        }
    }
}

#Preview {
    NewAlert()
}
