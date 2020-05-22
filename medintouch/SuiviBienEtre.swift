//
//  SuiviBienEtre.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SuiviBienEtre: View {
    
    private var titre1: String
    private var question1: String
    private var question2: String
    private var question3: String
    private var question4: String
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    
    init(choix: Int){
        
        switch choix {
            
        case 1:        // peau
            self.titre1 = "Problèmes de peau"
            self.question1 = "Avez-vous la peau grasse?"
            self.question2 = "Problème d'acné?"
            self.question3 = "Psoriasis"
            self.question4 = "Coups de soleil"
            
        case 2:       // articulations
            self.titre1 = "Problèmes d'articulations'"
            self.question1 = "Douleurs aux genoux"
            self.question2 = "Douleurs aux épaules"
            self.question3 = "Douleurs aux mains"
            self.question4 = "Douleurs matinales"
            
        case 3:       // fatigue
            self.titre1 = "Etes-vous fatigué(e)?"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 4:       // foie
            self.titre1 = "Comment va votre foie?"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 5:      // digestion
            self.titre1 = "Votre digestion?"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 6:       // sommeil
            self.titre1 = "Comment dormez-vous?"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 7:       // moral
            self.titre1 = "Votre moral?"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 8:
            self.titre1 = "cas 8"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 9:
            self.titre1 = "cas 9"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 10:
            self.titre1 = "cas 10"
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
            
        default:
            self.titre1 = "default"
            self.question1 = ""
            self.question2 = ""
            self.question3 = ""
            self.question4 = ""
            
        }
    }
    
    
    var body: some View {
        ZStack{
            Image("fond1").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView{
                    
                    HStack{
                        Spacer()
                        ZStack{
                            Circle()
                                .frame(width: 30.0, height: 30.0)
                                .foregroundColor(.white)
                                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                            Button(action: {},
                                   label:
                                {Text("< ").foregroundColor(.gray)
                            }
                            )
                        }
                        Spacer()
                        Text("Questionnaire").font(.title).bold()
                        Spacer()
                        
                    }
                        .padding(.top, 50.0)
                    
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 306.0, height:400)
                                .foregroundColor(Color(UIColor.systemGray6))
                                .shadow(color: .white, radius: 7, x: -5, y: -5)
                                .shadow(color: .gray, radius: 7, x: 5, y: 5)
                                .padding(.vertical, 15.0)
                                
                                .overlay(
                                    
                                    VStack{             // liste de questions
                                        Text(titre1
                                        ).padding(.bottom, 36.0).font(.system(size: 26))
                                        
                                        HStack{
                                            Text(question1).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected1, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }.padding(.bottom, 10.0)
                                        HStack{
                                            Text(question2).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected2, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }
                                        .padding(.bottom, 10.0)
                                        HStack{
                                            Text(question3).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected3, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }.padding(.bottom, 10.0)
                                        HStack{
                                            Text(question4).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected4, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }.padding(.bottom, 10.0)
                                        
                                        
                                    }
                                    .padding(.top, -66.0)
                                    
                            )
                        }
                        // Bouton Valider
                        Button(action: {},
                               
                               label: {
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 40)
                                        .frame(width: 306.0, height:50)
                                        .foregroundColor(Color(UIColor.systemGray6))
                                        .shadow(color: .white, radius: 7, x: -5, y: -5)
                                        .shadow(color: .gray, radius: 7, x: 5, y: 5)
                                        .padding(.vertical, 15.0)
                                    
                                    Text("Valider").font(.system(size: 26))
                                }
                        }
                        )
                    }
                }
            }
            
        }
    }
}



struct SuiviBienEtre_Previews: PreviewProvider {
    static var previews: some View {
        SuiviBienEtre(choix: 1)
    }
}
