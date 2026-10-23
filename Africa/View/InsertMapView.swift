//
//  InsertMapView.swift
//  Africa
//
//  Created by Swantan Barua on 23/10/26.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    
    // MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: 16.4377599
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 60.0,
            longitudeDelta: 60.0
        )
    )
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(
                        .vertical,
                        10
                    )
                    .padding(
                        .horizontal,
                        16
                    )
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(.rect(cornerRadius: 8))
                    )
                }
                    .padding(12)
                
                , alignment: .topTrailing
            )
            .frame(height: 300)
            .clipShape(.rect(cornerRadius: 12))
    }
}

// MARK: - PREVIEW
#Preview {
    InsertMapView()
}
