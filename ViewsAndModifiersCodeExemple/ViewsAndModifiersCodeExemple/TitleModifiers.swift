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
            .padding()
            .background(.black)
            .font(.largeTitle)
            .foregroundStyle(.white)
    }
}

struct MyNameModifier: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
        content
            Text(text)
                .padding()
                .font(.caption)
                .background(.red)
                .foregroundColor(.white)
            
        }
    }
}

extension View {
    func myName(with text: String) -> some View {
        modifier(MyNameModifier(text: text))
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}


struct TitleModifiers: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 300, alignment: .center)
            .myName(with: "Elliot Knight")
            
        
    }
}

struct TitleModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TitleModifiers()
    }
}
