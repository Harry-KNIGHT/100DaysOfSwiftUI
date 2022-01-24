//
//  ListView.swift
//  WordScrambleOverView(29)
//
//  Created by Elliot Knight on 24/01/2022.
//

import SwiftUI

struct ListView: View {
    let people = ["Paul", "George", "John", "Ringo"]
    
    var body: some View {
        List(people, id: \.self) {
            Section("Section \($0)") {
                Text("Static row 1")
                Text("Static row 2")
            }
            Section("Section 2") {
                ForEach(people, id: \.self) {
                    Text("\($0)")
                }
            }
            Section("Section 3") {
                Text("Static row 1")
                Text("Static row 2")
            }
            .listStyle(.grouped)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
