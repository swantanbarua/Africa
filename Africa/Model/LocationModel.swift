//
//  LocationModel.swift
//  Africa
//
//  Created by Swantan Barua on 26/10/26.
//

// MARK: - IMPORTS
import Foundation
import MapKit

// MARK: - MODEL
struct NationalParkLocation: Codable, Identifiable {
    
    // MARK: - PROPERTIES
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
