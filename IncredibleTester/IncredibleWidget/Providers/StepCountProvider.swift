//
//  BasicProvider.swift
//  IncredibleTester
//
//  Created by Sanghyun on 12/18/23.
//

import WidgetKit

struct StepCountProvider: TimelineProvider {
    
    private func getTemporaryStepCount(seed date: Date) -> Int {
        let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: date)
        
        return (dateComponents.hour ?? 0) + (dateComponents.minute ?? 0)
    }
    
    func placeholder(in context: Context) -> StepCountEntry {
        StepCountEntry(date: Date(), stepCount: 500)
    }

    func getSnapshot(in context: Context, completion: @escaping (StepCountEntry) -> ()) {
        let date = Date()
        var stepCountEntry: StepCountEntry
        
        if context.isPreview {
            stepCountEntry = StepCountEntry(date: date, stepCount: 777)
        } else {
            stepCountEntry = StepCountEntry(date: date, stepCount: self.getTemporaryStepCount(seed: date))
        }
        
        completion(stepCountEntry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<StepCountEntry>) -> ()) {
        let date = Date()
        
        let stepCountEntry = StepCountEntry(date: date, stepCount: self.getTemporaryStepCount(seed: date))
        let timeline = Timeline(entries: [stepCountEntry], policy: .atEnd)
        
        completion(timeline)
    }
    
}
