//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 19/10/24.
//

import SwiftUI

struct ResortDetailsView: View {
    
    let resort : Resort
    
    var size: String {
        switch resort.size {
        case 1: "Small"
        case 2: "Average"
        default: "Large"
        }
    }
    
    var price : String  {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ResortDetailsView(resort: .example)
}
