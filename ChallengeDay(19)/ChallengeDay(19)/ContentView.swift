//
//  ContentView.swift
//  ChallengeDay(19)
//
//  Created by Elliot knight on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var entryValue = ""
    @State private var valueToConvert = "kilometers"
    
    let valueToConverts = ["kilometers", "feet", "miles", "yards"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your value for convert into you choice", text: $valueToConvert)
                }header: {
                    Text("Convert value")
                }
                
                Section {
                    Picker("Select one conversion", selection: $valueToConvert) {
                        ForEach(valueToConverts, id: \.self) {
                            Text($0)
                        }
                    }
                }header: {
                    Text("Choose the value to convert from your entry")
                }
                Section {
                    Text("Yo")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
