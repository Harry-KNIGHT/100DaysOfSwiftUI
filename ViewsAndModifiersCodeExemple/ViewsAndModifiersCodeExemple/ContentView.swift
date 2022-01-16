//
//  ContentView.swift
//  ViewsAndModifiersCodeExemple
//
//  Created by Elliot knight on 16/01/2022.
//

import SwiftUI


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// Modifiers added in view for use them again multiple time
struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.regularMaterial)
            .background(.blue)
            .clipShape(Capsule())
        
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Using CapsuleText
            CapsuleText(text: "Elliot")
            CapsuleText(text: "Arthur")
            Text("Bonbons de gimauve")
//                .modifier(Title())
                .titleStyle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
