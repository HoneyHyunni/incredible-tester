//
//  PointProvider.swift
//  IncredibleWidgetExtension
//
//  Created by Sanghyun on 12/19/23.
//

import WidgetKit

struct PointProvider: TimelineProvider {
    
    private func getTemporaryPoint(seed date: Date) -> Int {
        let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: date)
        
        return (dateComponents.hour ?? 0) + (dateComponents.minute ?? 0)
    }
    
    func placeholder(in context: Context) -> PointEntry {
        PointEntry(date: Date(), point: 500, grade: "일반")
    }

    func getSnapshot(in context: Context, completion: @escaping (PointEntry) -> ()) {
        let date = Date()
        var pointEntry: PointEntry
        
        if context.isPreview {
            pointEntry = PointEntry(date: date, point: 777, grade: "일반")
        } else {
            pointEntry = PointEntry(date: date, point: self.getTemporaryPoint(seed: date), grade: "일반")
        }
        
        completion(pointEntry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<PointEntry>) -> ()) {
        let date = Date()
        
        let pointEntry = PointEntry(date: date, point: self.getTemporaryPoint(seed: date), grade: "일반")
        let timeline = Timeline(entries: [pointEntry], policy: .atEnd)
        
        completion(timeline)
    }
    
}
