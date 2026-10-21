//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Swantan Barua on 21/10/26.
//

import SwiftUI

struct InsertGalleryView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack(
                alignment: .center,
                spacing: 10
            ) {
                ForEach(
                    animal.gallery,
                    id: \.self
                ) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadius: 12))
                }
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    InsertGalleryView(animal: animals[0])
}
