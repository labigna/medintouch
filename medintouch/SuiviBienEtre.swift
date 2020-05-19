//
//  SuiviBienEtre.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SuiviBienEtre: View {
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
                       Text("Suivi Bien-être").font(.title).bold()
                                        
                                       Spacer()
                    
                   }
                
                    VStack{
                        
                        Text("Bienvenue sur Med'in'Touch !")
                            .font(.headline)
                        
                        Spacer()
                        
                        ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 306.0, height:320)
                            .foregroundColor(Color(UIColor.systemGray6))
                            .shadow(color: .white, radius: 7, x: -5, y: -5)
                            .shadow(color: .gray, radius: 7, x: 5, y: 5)
                        .padding(.vertical, 15.0)
                      
                            .overlay(
                                Text("Veuillez choisir un avatar : ")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                               
                            )
                        }
                    
                        
                        RoundedRectangle(cornerRadius: 40)
                              .frame(width: 306.0, height:320)
                              .foregroundColor(Color(UIColor.systemGray6))
                              .shadow(color: .white, radius: 7, x: -5, y: -5)
                              .shadow(color: .gray, radius: 7, x: 5, y: 5)
                          .padding(.vertical, 15.0)
                        
                              .overlay(
                                  Text("Veuillez choisir un avatar : ")
                                      .font(.callout)
                                      .fontWeight(.medium)
                                      .multilineTextAlignment(.center)
                        )
                    }
                    }
                }
        }
                }
            }
        }



struct SuiviBienEtre_Previews: PreviewProvider {
    static var previews: some View {
        SuiviBienEtre()
    }
}
