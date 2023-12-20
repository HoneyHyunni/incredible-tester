//
//  PointWidget.swift
//  IncredibleWidgetExtension
//
//  Created by Sanghyun on 12/19/23.
//

import SwiftUI
import WidgetKit

struct PointWidget: Widget {
    let kind = "INCREDIBLE_WIDGET_POINT"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: self.kind, provider: PointProvider()) { entry in
            if #available(iOS 17.0, *) {
                PointView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                PointView(entry: entry)
                    .padding()
            }
        }
        .configurationDisplayName("Point Widget")
        .description("포인트를 확인해 보세요.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

@available(iOS 17.0, *)
#Preview(as: .systemSmall) {
    PointWidget()
} timeline: {
    PointEntry(date: .now, point: 100, grade: "일반")
    PointEntry(date: .now, point: 200, grade: "우수")
}
