//
//  VideoModel.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-29.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
