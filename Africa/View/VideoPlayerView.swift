//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Swantan Barua on 25/10/26.
//

// MARK: - IMPORTS
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(
                    fileName: videoSelected,
                    fileFormat: "mp4"
                )
            )
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: 40,
                        height: 40
                    )
                    .padding(
                        .top,
                        8
                    )
                    .padding(
                        .horizontal,
                        8
                    )
                
                , alignment: .topLeading
            )
            .accentColor(.accent)
            .navigationBarTitle(
                videoTitle,
                displayMode: .inline
            )
        }
    }
}

// MARK: - PREVIEW
#Preview {
    VideoPlayerView(
        videoSelected: "lion",
        videoTitle: "Lion"
    )
}
