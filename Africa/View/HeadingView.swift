//
//  HeadingView.swift
//  Africa
//
//  Created by Swantan Barua on 21/10/26.
//

import SwiftUI

struct HeadingView: View {
    
    // MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(
        headingImage: "photo.on.rectangle.angled",
        headingText: "Wilderness in Pictures"
    )
}
