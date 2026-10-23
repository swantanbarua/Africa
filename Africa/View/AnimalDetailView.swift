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
                Group {
                    HeadingView(
                        headingImage: "questionmark.circle",
                        headingText: "Did you know?"
                    )
                    
                    InsertFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(
                        headingImage: "info.circle",
                        headingText: "All about \(animal.name)"
                    )
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(
                        headingImage: "Map",
                        headingText: "National Parks"
                    )
                    
                    InsertMapView()
                }
                
                // LINK
                Group {
                    HeadingView(
                        headingImage: "books.vertical",
                        headingText: "Learn More"
                    )
                    
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
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
