//
//  ChartView.swift
//  medintouch
//
//  Created by Labigna Traoré on 13/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI
import SwiftUICharts


struct ChartView: View {

    var body: some View {
        HStack{
        MultiLineChartView(data: [([0,20,50,100,20,100,50], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "Ginseng")
            VStack(alignment: .leading){
                HStack{
                    LinearGradient(gradient: Gradient(colors: [Color(red: 121/255, green: 27/240, blue: 240/255), Color(red: 197/255, green: 1/240, blue: 178/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 40, height: 20)
            Text("Sommeil")
                }
                
                HStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 141/240, blue: 46/255), Color(red: 255/255, green: 79/240, blue: 121/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width: 40, height: 20)
                Text("Energie")
                    }
                
                HStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 18/255, green: 208/240, blue: 242/255), Color(red: 159/255, green: 253/240, blue: 175/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width: 40, height: 20)
                Text("Ginseng")
                    }
            }
        }.frame(width: 350)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
