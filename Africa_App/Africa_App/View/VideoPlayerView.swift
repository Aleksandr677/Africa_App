//
//  VideoPlayerView.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-29.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - PROPERIES
    var videoSelected: String
    var videoTitle: String
    
    //MARK: - BODY
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                    //Text(videoTitle)
                } //VideoPlayer
                .overlay(alignment: .topLeading) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 42, height: 42)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                }
            } else {
                // Fallback on earlier versions
            }
        } //Stack
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
