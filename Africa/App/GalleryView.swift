//
//  GalleryView.swift
//  Africa
//
//  Created by Swantan Barua on 19/10/26.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - PROPERTIES
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        ScrollView(
            .vertical,
            showsIndicators: false
        ) {
           LazyVGrid(
            columns: gridLayout,
            alignment: .center,
            spacing: 10
           ) {
               ForEach(animals) { animal in
                   Image(animal.image)
                       .resizable()
                       .scaledToFit()
                       .clipShape(Circle())
                       .overlay(
                        Circle()
                            .stroke(
                                Color.white,
                                lineWidth: 1
                            )
                       )
               }
           }
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
