//
//  ContentView.swift
//  WeSplit
//
//  Created by Elliot knight on 06/01/2022.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        NavigationView {
            Form {
                Group {
                    //If you wanted to have 11 things inside the form you should put some rows inside a Group:
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
