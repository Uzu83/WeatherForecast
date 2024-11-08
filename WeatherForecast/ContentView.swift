//
//  ContentView.swift
//  WeatherForecast
//
//  Created by 東郷翔士希 on 2024/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false,high: 70,low: 50)
            DayForecast(day: "Tue", isRainy: true,high: 60,low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        if isRainy{
            return "cloud.rain.fill"
        }else{
            return "sun.max.fill"
        }
    }
    var iconColor: Color{
        if isRainy{
            return .blue
        }else{
            return .yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("\(high)")
                .fontWeight(Font.Weight.semibold)
            Text("\(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
