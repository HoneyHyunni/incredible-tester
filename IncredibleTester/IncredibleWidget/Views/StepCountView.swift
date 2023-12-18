//
//  BasicView.swift
//  IncredibleWidgetExtension
//
//  Created by Sanghyun on 12/18/23.
//

import SwiftUI

struct StepCountView : View {
    var entry: StepCountProvider.Entry

    var body: some View {
        VStack {
            Text("Time:")
            Text(entry.date, style: .time)

            Text("Step Count:")
            Text(entry.stepCount.description)
        }
    }
}
