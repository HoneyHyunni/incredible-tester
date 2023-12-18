//
//  BasicProvider.swift
//  IncredibleTester
//
//  Created by Sanghyun on 12/18/23.
//

import WidgetKit

struct StepCountProvider: TimelineProvider {
    func placeholder(in context: Context) -> StepCountEntry {
        StepCountEntry(date: Date(), stepCount: 500)
    }

    func getSnapshot(in context: Context, completion: @escaping (StepCountEntry) -> ()) {
        let entry = StepCountEntry(date: Date(), stepCount: 500)
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<StepCountEntry>) -> ()) {
        var entries: [StepCountEntry] = []
        
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = StepCountEntry(date: entryDate, stepCount: 500)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
