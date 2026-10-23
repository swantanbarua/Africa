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
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(
                        animal.name,
                        destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!
                    )
                }
                .foregroundStyle(.accent)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    ExternalWebLinkView(animal: animals[2])
}
