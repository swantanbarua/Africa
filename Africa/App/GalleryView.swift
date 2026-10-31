//
//  GalleryView.swift
//  Africa
//
//  Created by Swantan Barua on 19/10/26.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - BODY
    var body: some View {
        ScrollView(
            .vertical,
            showsIndicators: false
        ) {
            
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
