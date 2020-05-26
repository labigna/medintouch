//
//  ProfilView.swift
//  medintouch
//
//  Created by Labigna Traoré on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    
    @State private var showingSheet = false
    @State private var selectedGraph = 0
    var suivis : [Suivi] = []
    var choixSuivi1 : Int = 1
    var choixSuivi2 : Int = 2
    var choixSuivi3 : Int = 3
    
    init(){
        self.suivis.append(Suivi(donnees: [2,1,4,5,2], titleSuivi: "Epiderme"))
        self.suivis.append(Suivi(donnees: [1,2,3,4,5], titleSuivi: "Articulation"))
        self.suivis.append(Suivi(donnees: [5,1,4], titleSuivi: "Digestion"))
        self.suivis.append(Suivi(donnees: [2,1,4,5,2], titleSuivi: "Moral"))
        self.suivis.append(Suivi(donnees: [2,4,5,2], titleSuivi: "Physique"))
    }
    
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color(UIColor.systemGray6)
                ScrollView{
                    VStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(height:380)
                            .foregroundColor(Color(red: 0.961, green: 0.993, blue: 0.949))
                            .shadow(color: Color(UIColor.systemGray4), radius: 5, x: 14, y: 8)
                            .overlay(
                                VStack(alignment: .leading){
                                    HStack{
                                        ZStack{
                                            Capsule(style: .continuous)
                                                .frame(width: 80.0, height: 130.0)
                                                .foregroundColor(Color(red: 0.961, green: 0.993, blue: 0.949))
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
                                                Button(action: {self.showingSheet = true}){
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
                                            Text("Jerry Gaulay")
                                                .font(.headline)
                                            Text("Age: 30 ans")
                                                .font(.headline)
                                            Divider()
                                            HStack{
                                                Text("Taille: 181 cm")
                                                Text("Poids: 72 kg")
                                            }.padding(.vertical)
                                            Text("Objectifs: Régularité et Résultat")
                                        }
                                        
                                    }.padding()
                                    Text("Traitements:")
                                        .padding([.leading, .bottom, .trailing])
                                    
                                    Text("Contre-indications:")
                                        .padding([.leading, .bottom, .trailing])
                            })
                            .padding(.top, -35.0)
                        
                        NavigationLink(destination: SuiviBienEtre2())
                        {
                            Capsule()
                                .foregroundColor(Color(UIColor.systemGray6))
                                .frame(width: 330.0, height: 50.0)
                                .shadow(color: .white, radius: 3, x: -5, y: -5)
                                .shadow(color: Color(UIColor.systemGray4), radius: 3, x: 5, y: 5)
                                .overlay(Text("Effectuer le suivi quotidien").foregroundColor(.black))
                        }.padding()
                        HStack{
                            Text("Suivi")
                                .font(.title)
                            Spacer()
                            Picker("Graphique",selection: $selectedGraph)
                            {
                                Text("Semaine").tag(0)
                                Text("Mois").tag(1)
                            }.pickerStyle(SegmentedPickerStyle())
                                .frame(width: 150)
                        }
                        .frame(width: 320)
                        
                        ChartView(graphique1: suivis[choixSuivi1], graphique2: suivis[choixSuivi2], graphique3: suivis[choixSuivi3])
                        
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 100.0)
                }
            }.edgesIgnoringSafeArea(.all)
                .actionSheet(isPresented: $showingSheet) {
                    ActionSheet(title: Text("Paramètres"), buttons: [.default(Text("Modifier le profil")),  .default(Text("Déconnexion").foregroundColor(.red)),  .cancel(Text("Fermer")) ])
            }
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
