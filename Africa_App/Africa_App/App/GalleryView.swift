//
//  GalleryView.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-27.
//

import SwiftUI

@available(iOS 16.0, *)
struct GalleryView: View {
    //MARK: - PROPERTIES
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    //SIMPLE GRID DEFINITION
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//
    
    //EFFICIENT GRID DEFINITION
    //let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 14) {
                //MARK: - IMAGE
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    }
                
                //MARK: - SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                    }
                
                //MARK: - GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(Color.white, lineWidth: 1)
                            }
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    } //Loop
                } //GRID
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            } //VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            GalleryView()
        } else {
            // Fallback on earlier versions
        }
    }
}
