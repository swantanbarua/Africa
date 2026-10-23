//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Swantan Barua on 23/10/26.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - PREVIEW
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    ExternalWebLinkView(animal: animals[2])
}
