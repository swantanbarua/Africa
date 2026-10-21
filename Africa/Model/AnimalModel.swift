//
//  AnimalModel.swift
//  Africa
//
//  Created by Swantan Barua on 21/10/26.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    
    // MARK: - PROPERTIES
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
