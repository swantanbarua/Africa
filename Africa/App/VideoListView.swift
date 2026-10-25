//
//  VideoListView.swift
//  Africa
//
//  Created by Swantan Barua on 19/10/26.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(
                            .vertical,
                            8
                        )
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle(
                "Videos",
                displayMode: .inline
            )
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEWS
#Preview {
    VideoListView()
}
