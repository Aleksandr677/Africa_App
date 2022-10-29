//
//  Modifier.swift
//  Africa_App
//
//  Created by Христиченко Александр on 2022-10-29.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
