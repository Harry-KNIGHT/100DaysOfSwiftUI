//
//  ShowsAlertMessageView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 09/01/2022.
//

import SwiftUI

struct ShowsAlertMessageView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Import message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this bro")
        }
    }
}

struct ShowsAlertMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsAlertMessageView()
    }
}
