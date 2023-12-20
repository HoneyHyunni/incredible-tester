//
//  StepCountView.swift
//  IncredibleWidgetExtension
//
//  Created by Sanghyun on 12/18/23.
//

import SwiftUI
import WidgetKit

struct StepCountView : View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: StepCountProvider.Entry
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            StepCountSmallView(entry: self.entry)
        case .systemMedium:
            StepCountMediumView(entry: self.entry)
        default:
            DefaultView()
        }
    }
}

struct StepCountSmallView: View {
    var entry: StepCountProvider.Entry
    
    var body: some View {
        VStack {
            Text("Time:")
                .foregroundColor(.yellow)
            Text(entry.date, style: .time)
            
            Text("Step Count:")
                .foregroundColor(.yellow)
            Text(entry.stepCount.description)
        }
    }
}

struct StepCountMediumView: View {
    var entry: StepCountProvider.Entry
    
    var body: some View {
        VStack {
            Text("Time:")
                .foregroundColor(.yellow)
            Text(entry.date, style: .time)
            
            Text("Step Count:")
                .foregroundColor(.yellow)
            Text(entry.stepCount.description)
            
            Text("Distance:")
                .foregroundColor(.yellow)
            Text("\(entry.distance.description) km")
        }
    }
}

struct DefaultView: View {
    var body: some View {
        VStack {
            Text("위젯에 문제가 있어요.")
        }
    }
}
