//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Swantan Barua on 25/10/26.
//

// MARK: - IMPORTS
import Foundation
import AVKit

// MARK: - PROPERTIES
var videoPlayer: AVPlayer?

// MARK: - FUNCTIONS
func playVideo(
    fileName: String,
    fileFormat: String
) -> AVPlayer {
    
    if Bundle.main.url(
        forResource: fileName,
        withExtension: fileFormat
    ) != nil {
        videoPlayer = AVPlayer(
            url: Bundle.main.url(
                forResource: fileName,
                withExtension: fileFormat
            )!
        )
        
        videoPlayer?.play()
    }
    
    return videoPlayer ?? AVPlayer()
}
