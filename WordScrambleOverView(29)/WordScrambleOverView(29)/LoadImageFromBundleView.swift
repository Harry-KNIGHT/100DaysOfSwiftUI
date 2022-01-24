//
//  LoadImageFromBundleView.swift
//  WordScrambleOverView(29)
//
//  Created by Elliot Knight on 24/01/2022.
//

import SwiftUI

struct LoadImageFromBundleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // Load
        if let fileContents = try? String(contentsOf: fileURL)
                // We loaded the file into the string
        }
    }
}

struct LoadImageFromBundleView_Previews: PreviewProvider {
    static var previews: some View {
        LoadImageFromBundleView()
    }
}
