//
//  VideoListItemView.swift
//  Africa
//
//  Created by Swantan Barua on 24/10/26.
//

import SwiftUI

struct VideoListItemView: View {
    
    // MARK: - PROPERTIES
    var video: Video
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(.rect(cornerRadius: 10))
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .shadow(radius: 4)
            }
            
            VStack(
                alignment: .leading,
                spacing: 10
            ) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    VideoListItemView(video: videos[1])
}
