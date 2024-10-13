//
//  ViewThatFitss.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 13/10/24.
//

import SwiftUI

struct ViewThatFitss: View {
    var body: some View {
        
        //This indicates if the first view doesnt fit in potrait mode then the second view will shown, and first view will appear in landsCape mode.
        
        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)
            
            Circle()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ViewThatFitss()
}
