//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Swantan Barua on 21/10/26.
//

import SwiftUI

struct AnimalDetailView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(
            .vertical,
            showsIndicators: false
        ) {
            VStack(
                alignment: .center,
                spacing: 20
            ) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(
                        .vertical,
                        8
                    )
                    .foregroundStyle(.primary)
                    .background(
                        Color.accent
                            .frame(height: 4)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled",
                        headingText: "Wilderness in Pictures"
                    )
                    
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                // LINK
            }
            .navigationBarTitle(
                "Learn about \(animal.name)",
                displayMode: .inline
            )
        }
    }
}

#Preview {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    AnimalDetailView(animal: animals[0])
}
