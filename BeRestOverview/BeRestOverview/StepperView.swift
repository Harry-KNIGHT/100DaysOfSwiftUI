//
//  StepperView.swift
//  BeRestOverview
//
//  Created by Elliot knight on 19/01/2022.
//

import SwiftUI

struct StepperView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours ", value: $sleepAmount, in: 4...13, step: 0.25)
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
