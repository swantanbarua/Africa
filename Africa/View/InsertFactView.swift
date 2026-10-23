//
//  InsertFactView.swift
//  Africa
//
//  Created by Swantan Barua on 23/10/26.
//

import SwiftUI

struct InsertFactView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(
                    animal.fact,
                    id: \.self
                ) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(
                minHeight: 148,
                idealHeight: 168,
                maxHeight: 180
            )
        }
    }
}

// MARK: - PREVIEWS
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    InsertFactView(animal: animals[0])
}
