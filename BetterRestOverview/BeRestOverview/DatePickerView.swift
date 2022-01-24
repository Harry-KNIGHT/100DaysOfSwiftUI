//
//  DatePickerView.swift
//  BeRestOverview
//
//  Created by Elliot knight on 19/01/2022.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date.now
    var body: some View {
        DatePicker("Today", selection: $date, in: Date.now..., displayedComponents: .date)
            .labelsHidden()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
