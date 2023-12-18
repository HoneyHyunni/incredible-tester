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
        let date = Date()
        let policyDate = Calendar.current.date(byAdding: .minute, value: 10, to: date)
        
        let dateComponents = Calendar.current.dateComponents([.hour, .month, .second], from: date)
        let tempStepCount = (dateComponents.hour ?? 0) + (dateComponents.month ?? 0) + (dateComponents.second ?? 0)
        
        let stepCountEntry = StepCountEntry(date: date, stepCount: tempStepCount)
        let timeline = Timeline(entries: [stepCountEntry], policy: .after(policyDate ?? date))
        
        completion(timeline)
    }
}
