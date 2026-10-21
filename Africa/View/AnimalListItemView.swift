//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Swantan Barua on 21/10/26.
//

import SwiftUI

struct AnimalListItemView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        HStack(
            alignment: .center,
            spacing: 16
        ) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(
                    width: 100,
                    height: 100
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(
                alignment: .leading,
                spacing: 8
            ) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(
                        .trailing,
                        8
                    )
            }
        }
    }
}

#Preview {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    AnimalListItemView(animal: animals[1])
}
