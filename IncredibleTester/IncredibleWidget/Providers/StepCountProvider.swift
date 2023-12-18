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
    
    private func getTemporaryDistance(seed date: Date) -> Float {
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: date)
        let yearValue = Float(dateComponents.year ?? 0)
        let monthValue = Float(dateComponents.month ?? 0)
        let dayValue = Float(dateComponents.day ?? 0) / 100.0
        
        return yearValue + monthValue + dayValue
    }
    
    func placeholder(in context: Context) -> StepCountEntry {
        StepCountEntry(date: Date(), stepCount: 500, distance: 2.5)
    }

    func getSnapshot(in context: Context, completion: @escaping (StepCountEntry) -> ()) {
        let date = Date()
        var stepCountEntry: StepCountEntry
        
        if context.isPreview {
            stepCountEntry = StepCountEntry(date: date, stepCount: 777, distance: 7.77)
        } else {
            stepCountEntry = StepCountEntry(date: date, stepCount: self.getTemporaryStepCount(seed: date), distance: self.getTemporaryDistance(seed: date))
        }
        
        completion(stepCountEntry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<StepCountEntry>) -> ()) {
        let date = Date()
        
        let stepCountEntry = StepCountEntry(date: date, stepCount: self.getTemporaryStepCount(seed: date), distance: self.getTemporaryDistance(seed: date))
        let timeline = Timeline(entries: [stepCountEntry], policy: .atEnd)
        
        completion(timeline)
    }
    
}
