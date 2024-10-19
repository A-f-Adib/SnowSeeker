//
//  ResortView.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 19/10/24.
//

import SwiftUI

struct ResortView: View {
    
    let resort : Resort
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image(decorative: resort.id)
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    ResortView(resort: .example)
}
