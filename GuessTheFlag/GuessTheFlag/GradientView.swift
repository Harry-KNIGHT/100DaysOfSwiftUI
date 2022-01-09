//
//  GradientView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 09/01/2022.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        /*
        LinearGradient(gradient: Gradient(stops: [
            Gradient.Stop(color: .white, location: 0.45), Gradient.Stop(color: .black, location: 0.55)
        ]), startPoint: .top, endPoint: .bottom)
         
        // Make Circle effect
        RadialGradient(gradient: Gradient(colors: [.red, .black]), center: .center, startRadius: 20, endRadius: 200)
         */
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
