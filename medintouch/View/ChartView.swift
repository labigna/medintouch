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
    private var graph1 : Suivi
    private var graph2 : Suivi
    private var graph3 : Suivi
    
    init(graphique1 : Suivi, graphique2 : Suivi, graphique3 : Suivi){
        self.graph1 = graphique1
        self.graph2 = graphique2
        self.graph3 = graphique3
    }
    
    var body: some View {
        HStack{
            MultiLineChartView(data: [(graph1.donnees, GradientColors.green), (graph2.donnees, GradientColors.purple), (graph3.donnees, GradientColors.orngPink)], title: "", rateValue: 0)

            VStack(alignment: .leading){
                HStack{
                    LinearGradient(gradient: Gradient(colors: [Color(red: 121/255, green: 27/240, blue: 240/255), Color(red: 197/255, green: 1/240, blue: 178/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 40, height: 20)
                    Text(graph1.titleSuivi)
                }
                
                HStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 141/240, blue: 46/255), Color(red: 255/255, green: 79/240, blue: 121/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width: 40, height: 20)
                    Text(graph2.titleSuivi)
                    }
                
                HStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 18/255, green: 208/240, blue: 242/255), Color(red: 159/255, green: 253/240, blue: 175/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width: 40, height: 20)
                    Text(graph3.titleSuivi)
                    }
            }
        }.frame(width: 350)
    }
}

/*struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}*/
