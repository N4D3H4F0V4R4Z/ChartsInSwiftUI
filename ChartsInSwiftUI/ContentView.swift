//
//  ContentView.swift
//  ChartsInSwiftUI
//
//  Created by Наджафов Араз on 11.01.2021.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            LineChartView(data: [4, 8, 15, 16, 23 ,42],
                          title: "LineChart",
                          style: ChartStyle(backgroundColor: .gray, accentColor: .blue, gradientColor: GradientColor(start: .orange, end: .red), textColor: .pink, legendTextColor: .red, dropShadowColor: .yellow))
            
            Spacer()
            BarChartView(data: ChartData(
                            values: [
                                ("Jan", 13),
                                ("Feb", 2),
                                ("Mar", 5),
                                ("Jan", 7),
                                ("Apr", 31),
                                ("May", 4),
                                ("Jun", 23),
                                ("Jul", 30),
                            ]),
                         title: "BarChart"
            )
            
            Spacer()
            PieChartView(
                data: [4, 8, 15, 16, 23, 42],
                title: "PieChart"
            )
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
