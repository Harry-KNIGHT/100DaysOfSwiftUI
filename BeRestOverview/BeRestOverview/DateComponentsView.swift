//
//  DateComponentsView.swift
//  BeRestOverview
//
//  Created by Elliot knight on 19/01/2022.
//

import SwiftUI

struct DateComponentsView: View {
    var body: some View {
        // Best writing code for get day at formatted from the personnal settings ⬇️
        Text(Date.now.formatted(date: .long, time: .omitted))
    }
    /* Differents methods for get the time but the better one is in the body view.
     
    func firstExemple() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
    }
    
    func secondExemple() {
        let components = Calendar.current.dateComponents( [.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
    */
}

struct DateComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        DateComponentsView()
    }
}
