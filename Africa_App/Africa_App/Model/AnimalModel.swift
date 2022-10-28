//
//  AnimalModel.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-28.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
