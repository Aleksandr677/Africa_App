//
//  MainView.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            if #available(iOS 16.0, *) {
                GalleryView()
                    .tabItem {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
            } else {
                // Fallback on earlier versions
            }
        } //Tab
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
