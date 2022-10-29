//
//  AnimalGridItemVIew.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-29.
//

import SwiftUI

struct AnimalGridItemVIew: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct AnimalGridItemVIew_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemVIew(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
