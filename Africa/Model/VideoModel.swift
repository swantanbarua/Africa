//
//  VideoModel.swift
//  Africa
//
//  Created by Swantan Barua on 24/10/26.
//

import Foundation

struct Video: Codable, Identifiable {
    
    // MARK: - PROPERTIES
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
