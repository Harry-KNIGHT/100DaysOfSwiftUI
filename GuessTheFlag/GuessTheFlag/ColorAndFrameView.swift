//
//  ColorAndFrameView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 09/01/2022.
//

import SwiftUI

struct ColorAndFrameView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
             
            }
            Text("Content in the view")
                .bold()
//              .foregroundColor(.secondary)
//              Vibrant effect (vibrancy)
                .foregroundStyle(.secondary)
                .padding(30)
                .background(.ultraThinMaterial)
        }
    }
}

struct ColorAndFrameView_Previews: PreviewProvider {
    static var previews: some View {
        ColorAndFrameView()
    }
}
