//
//  PointView.swift
//  IncredibleWidgetExtension
//
//  Created by Sanghyun on 12/19/23.
//

import SwiftUI
import WidgetKit

struct PointView : View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: PointProvider.Entry
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            PointSmallView(entry: self.entry)
        case .systemMedium:
            PointMediumView(entry: self.entry)
        default:
            DefaultView()
        }
    }
}

struct PointSmallView: View {
    var entry: PointProvider.Entry
    
    var body: some View {
        VStack {
            Text("Time:")
                .foregroundColor(.yellow)
            Text(entry.date, style: .time)
            
            Text("Point:")
                .foregroundColor(.yellow)
            Text(entry.point.description)
        }
    }
}

struct PointMediumView: View {
    var entry: PointProvider.Entry
    
    var body: some View {
        VStack {
            Text("Time:")
                .foregroundColor(.yellow)
            Text(entry.date, style: .time)
            
            Text("Point:")
                .foregroundColor(.yellow)
            Text(entry.point.description)
            
            Text("Grade:")
                .foregroundColor(.yellow)
            Text("\(entry.grade)")
        }
    }
}
