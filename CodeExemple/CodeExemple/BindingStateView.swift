//
//  BindingView.swift
//  WeSplit
//
//  Created by Elliot knight on 06/01/2022.
//

import SwiftUI

struct BindingView: View {
   @State var name: String = ""
    var body: some View {
        Form {
            TextField("Write your name bro", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
