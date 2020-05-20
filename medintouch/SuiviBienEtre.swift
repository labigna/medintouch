//
//  SuiviBienEtre.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SuiviBienEtre: View {
    /*
     1 = peau
     2 = articulations
     3 = fatigue
     4 = foie
     5 = digestion
     6 = sommeil
     7 = moral
     8 =
     9 =
     10 =
    
    */
    
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
            
        case 1:
            self.question1 = "Avez-vous la peau grasse?"
            self.question2 = "Problème d'acné?"
            self.question3 = "Psoriasis"
            self.question4 = "Coups de soleil"
            
            case 2:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 3:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 4:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 5:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 6:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 7:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 8:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 9:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            case 10:
                self.question1 = "5"
                self.question2 = "6"
                self.question3 = "7"
                self.question4 = "8"
                
            
            default:
            self.question1 = ""
            self.question2 = ""
            self.question3 = ""
            self.question4 = ""
                
        }
    }
    
   
    var body: some View {
        NavigationView{
               
               ZStack{
                   Image("fond1").resizable()
                                     .edgesIgnoringSafeArea(.all)
                
               VStack{
                      ScrollView{
        //Navigation bar
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
                
                    VStack{
                        
                        
                        
                        ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 306.0, height:500)
                            .foregroundColor(Color(UIColor.systemGray6))
                            .shadow(color: .white, radius: 7, x: -5, y: -5)
                            .shadow(color: .gray, radius: 7, x: 5, y: 5)
                        .padding(.vertical, 15.0)
                      
                            .overlay(
                                
                                VStack{
                                    Text("Problème de peau"
                                    ).padding(.bottom, 32.0)
                                    
                                    HStack{
                                Text(question1)
                                        Toggle(isOn:
                                            $isSelected1, label:
                                            {
                                                EmptyView()
                                        })
                                    }
                                    HStack{
                                Text(question2)
                                        Toggle(isOn:
                                            $isSelected2, label:
                                            {
                                                EmptyView()
                                        })
                                    }
                                    HStack{
                                Text(question3)
                                        Toggle(isOn:
                                            $isSelected3, label:
                                            {
                                                EmptyView()
                                        })
                                    }
                                    HStack{
                                Text(question4)
                                        Toggle(isOn:
                                            $isSelected4, label:
                                            {
                                                EmptyView()
                                        })
                                    }
                                }
                            )
                        }
                    
                        
                        
                    }
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
