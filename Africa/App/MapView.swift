//
//  MapView.swift
//  Africa
//
//  Created by Swantan Barua on 19/10/26.
//

// MARK: - IMPORTS
import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: 16.4377599
        )
        var mapZoomLevel = MKCoordinateSpan(
            latitudeDelta: 70.0,
            longitudeDelta: 70.0
        )
        
        var mapRegion = MKCoordinateRegion(
            center: mapCoordinates,
            span: mapZoomLevel
        )
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: locations
        ) { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }
        .overlay(
            HStack(
                alignment: .center,
                spacing: 48
            ) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: 50,
                        height: 50,
                        alignment: .center
                    )
                
                VStack(
                    alignment: .leading,
                    spacing: 4
                ) {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                }
            }
                .padding(
                    .vertical,
                    12
                )
                .padding(
                    .horizontal,
                    16
                )
                .background(
                    Color.black
                        .clipShape(.rect(cornerRadius: 8))
                        .opacity(0.5)
                )
                .padding()
            
            , alignment: .top
        )
    }
}

// MARK: - PREVIEW
#Preview {
    MapView()
}
