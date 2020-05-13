//
//  ProfilView.swift
//  medintouch
//
//  Created by Labigna Traoré on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    
    @State private var selectedGraph = 0
    
    var body: some View {
       ZStack{
        Color(UIColor.systemGray6)
            VStack{
                RoundedRectangle(cornerRadius: 40)
                    .frame(height:320)
                    .foregroundColor(Color(UIColor.systemGray6))
                    .shadow(color: .white, radius: 7, x: -14, y: -8)
                    .shadow(color: .gray, radius: 10, x: 14, y: 8)
                    .overlay(
                        VStack(alignment: .leading){
                HStack{
                    ZStack{
                        Capsule(style: .continuous)
                            .frame(width: 80.0, height: 130.0)
                            .foregroundColor(Color(UIColor.systemGray6))
                            .padding(.top, 75.0)
                        VStack{
                        Image("pexels-photo-614810").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120.0)
                            .mask(Circle())
                            .overlay(
                                Circle()
                                .stroke()
                                .foregroundColor(.white))
                            Button(action: {}){
                                Image(systemName: "gear")
                                .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.top, 5.0)
                                    .foregroundColor(.yellow)
                                    .frame(width: 50.0)
                            }
                        }
                    }.shadow(color: .white, radius: 3, x: -5, y: -5)
                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                    VStack(alignment: .leading){
                        Text("Jerry Lagagne")
                            .font(.title)
                        Text("Age: 30 ans")
                            .font(.headline)
                        Divider()
                        HStack{
                        Text("Taille: 181 cm")
                        Text("Poids: 72 kg")
                        }.padding(.vertical)
                        Text("Objectifs: Régularité et Résultat")
                    }
               
                }.padding(.top, -30)
                            Text("Traitements:")
                                .padding()
                               
                            Text("Contre-indications:")
                                .padding([.leading, .bottom, .trailing])
                    })
                    .padding(.top, -29.0)
                    .padding()
                HStack{
                Text("Suivi sur: le ginseng")
                    .font(.title)
                    Spacer()
                    Picker(selection: $selectedGraph)
                        {
                            Text("Jour").tag(0)
                            Text("Semaine").tag(1)
                            Text("Mois").tag(2)
                        }
                }.padding(.leading, 23.0)
                GraphView()
                
                Button(action: {})
                {
                    Capsule()
                        .foregroundColor(Color(UIColor.systemGray6))
                         .frame(width: 330.0, height: 50.0)
                        .shadow(color: .white, radius: 3, x: -5, y: -5)
                        .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        .overlay(Text("Effectuer le suivi").foregroundColor(.black))
                       
                    
                }.padding()
            
            }.padding(.top)
       }.edgesIgnoringSafeArea(.all)
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
