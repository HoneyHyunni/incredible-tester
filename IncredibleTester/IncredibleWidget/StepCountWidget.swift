//
//  IncredibleWidget.swift
//  IncredibleWidget
//
//  Created by Sanghyun on 12/18/23.
//

import SwiftUI
import WidgetKit

struct StepCountWidget: Widget {
    let kind = "INCREDIBLE_WIDGET_STEP_COUNT"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: self.kind, provider: StepCountProvider()) { entry in
            if #available(iOS 17.0, *) {
                StepCountView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                StepCountView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Step Count Widget")
        .description("걸음수를 확인해 보세요.")
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    StepCountWidget()
} timeline: {
    StepCountEntry(date: .now, stepCount: 100)
    StepCountEntry(date: .now, stepCount: 200)
}
