//
//  creationProfil.swift
//  medintouch
//
//  Created by Claire Siméon on 13/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct creationProfil: View {
    var body: some View {
     
       NavigationView{
       
       ZStack{
           Image("fond vert").resizable()
                             .edgesIgnoringSafeArea(.all)
        
       VStack{
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
               Text("Création de Profil").font(.title).bold()
                                
                               Spacer()
           }
         
        
        
        ScrollView{
            VStack{
                
                Text("Bienvenue sur Med'in'Touch !")
                    .font(.headline)
                
                Spacer()
                
                ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 246.0, height:320)
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
                                  .frame(width: 300.0, height:320)
                                  .foregroundColor(Color(UIColor.systemGray6))
                                  .shadow(color: .white, radius: 7, x: -14, y: -8)
                                  .shadow(color: .gray, radius: 10, x: 14, y: 8)
                .padding(.vertical, 15.0)
            }
            }
        }
}
        }
    }
}

struct creationProfil_Previews: PreviewProvider {
    static var previews: some View {
        creationProfil()
    }
}
