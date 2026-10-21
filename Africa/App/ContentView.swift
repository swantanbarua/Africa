//
//  ContentView.swift
//  Africa
//
//  Created by Swantan Barua on 19/10/26.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0
                        )
                    )
            }
            .navigationBarTitle(
                "Africa",
                displayMode: .large
            )
        }
    }
}

#Preview {
    ContentView()
}
