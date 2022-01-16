//
//  TitleModifiers.swift
//  ViewsAndModifiersCodeExemple
//
//  Created by Elliot knight on 16/01/2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}
struct TitleModifiers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .title()
    }
}

struct TitleModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TitleModifiers()
    }
}
