//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Swantan Barua on 28/10/26.
//

import SwiftUI

struct MapAnnotationView: View {
    
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accent)
                .frame(
                    width: 60,
                    height: 60,
                    alignment: .center
                )
            
            Circle()
                .stroke(Color.accent)
                .frame(
                    width: 50,
                    height: 50,
                    alignment: .center
                )
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - CGFloat(animation))
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(
                    width: 48,
                    height: 48,
                    alignment: .center
                )
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(
                Animation.easeOut(duration: 2).repeatForever(autoreverses: false)
            ) {
                animation = 1.0
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    MapAnnotationView(location: locations[0])
}
