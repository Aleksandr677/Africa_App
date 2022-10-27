//
//  ContentView.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } //List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //Navigation
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
