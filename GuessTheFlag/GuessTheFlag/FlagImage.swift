//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 16/01/2022.
//

import SwiftUI


struct FlagImage: View {
    var name: String
    
    var body: some View {
        Image(name)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(name: "France")
    }
}
