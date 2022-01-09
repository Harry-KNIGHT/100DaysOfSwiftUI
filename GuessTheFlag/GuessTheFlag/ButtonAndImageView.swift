//
//  ButtonAndImageView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 09/01/2022.
//

import SwiftUI

struct ButtonAndImageView: View {
    var body: some View {
        VStack {
            /*
             // Button turns red
             Button("Delet Selection", role: .destructive ,action: executeDelete)
             
             Button("Button 1") { }
             .buttonStyle(.bordered)
             Button("Button 2", role: .destructive) { }
             .buttonStyle(.bordered)
             Button("Button 3") { }
             .buttonStyle(.borderedProminent)
             // Change the button color
             .tint(.purple)
             Button("Button 4", role: .destructive) { }
             .buttonStyle(.borderedProminent)
             */
            
             // Custom button
             Button {
             print("Button was tapped!")
             } label: {
             Label("Edit", systemImage: "pencil")
             }
           
       
            
        }
    }
    func executeDelete() {
        print("Now deleting")
        
    }
    
}

struct ButtonAndImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAndImageView()
    }
}
