//
//  MultiLayout.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 13/10/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Taylor Swift")
            Text("Country: USA")
            Text("Age: 30")
        }
        .font(.title)
    }
}

struct MultiLayout: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        //This indicates text shown vertically in potrait mode and horizontally in landscape mode
        if horizontalSizeClass == .compact {
            VStack(content: UserView.init)
        } else {
            HStack(content: UserView.init)
        }
    }
}

#Preview {
    MultiLayout()
}
