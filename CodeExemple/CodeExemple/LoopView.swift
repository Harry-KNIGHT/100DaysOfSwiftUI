//
//  LoopView.swift
//  WeSplit
//
//  Created by Elliot knight on 06/01/2022.
//

import SwiftUI

struct LoopView: View {
    let students = ["Harry", "Paul", "Mickael", "Francky", "Jeronimo", "Tommy", "Jimmy"]
    @State private var selectedStudents = "Harry"
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudents) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
