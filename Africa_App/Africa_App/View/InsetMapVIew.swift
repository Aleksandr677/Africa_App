//
//  InsetMapVIew.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-28.
//

import SwiftUI
import MapKit

struct InsetMapVIew: View {
    //MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing, content: {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                    
                } //Navigation
                .padding(12)
            })
            .frame(height: 256)
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct InsetMapVIew_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapVIew()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
