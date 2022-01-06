//
//  StateButtonView.swift
//  WeSplit
//
//  Created by Elliot knight on 06/01/2022.
//

import SwiftUI

struct StateButtonView: View {
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count is: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct StateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StateButtonView()
    }
}
