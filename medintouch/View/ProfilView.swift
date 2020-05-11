//
//  ProfilView.swift
//  medintouch
//
//  Created by Labigna Traoré on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
       ZStack{
        Color(UIColor.systemGray6)
            VStack{
                RoundedRectangle(cornerRadius: 40)
                    .frame(height:400)
                    .foregroundColor(Color(UIColor.systemGray6))
                    .shadow(color: .white, radius: 7, x: -8, y: -8)
                    .shadow(color: .gray, radius: 10, x: 8, y: 8)
                    .overlay(
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
                    
                }.padding(.top))
                    .padding(.top)
                    .padding()
                Spacer()
            }.padding(.top)
       }.edgesIgnoringSafeArea(.all)
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
