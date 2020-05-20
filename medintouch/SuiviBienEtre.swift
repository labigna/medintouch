//
//  SuiviBienEtre.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SuiviBienEtre: View {
    
    private var question1: String
    private var question2: String
    private var question3: String
    private var question4: String
    
    init(choix: Int){
        
        switch choix {
            
        case 1:
            self.question1 = "Avez-vous la peau grasse?"
            self.question2 = "Problème d'acné?"
            self.question3 = "Psoriasis"
            self.question4 = "Coups de soleil"
            
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
                            .frame(width: 306.0, height:550)
                            .foregroundColor(Color(UIColor.systemGray6))
                            .shadow(color: .white, radius: 7, x: -5, y: -5)
                            .shadow(color: .gray, radius: 7, x: 5, y: 5)
                        .padding(.vertical, 15.0)
                      
                            .overlay(
                                
                                VStack{
                                Text(question1)
                                Text(question2)
                                Text(question3)
                                Text(question4)
                                
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
