//
//  creationProfil.swift
//  medintouch
//
//  Created by Claire Siméon on 13/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct creationProfil: View {
    @State private var age: String = ""
    @State private var taille: String = ""
    @State private var poids: String = ""
    var body: some View {
        
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
                            .padding(.top, 20.0)
                        
                        Button(action: {},
                               label:
                            {Text("< ").foregroundColor(.gray)
                                .padding(.top, 20.0)
                        }
                        )
                    }
                    Spacer()
                    
                    Text("Création de Profil").font(.title).bold().padding(.top, 20.0)
                    
                    Spacer()
                }
                
               ScrollView{
                
                Text("Bienvenue sur Med'in'Touch !").font(.headline).padding(.vertical, 25.0)
                
           
                
              
                   
                    ZStack{
                    OneQuestionView(img: "medoc", titre: "Veuillez sélectionner un avatar : ")
                       Button(action: {}) { Image("icon").resizable()
                            .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.black)
                    }
                    }
                    
                    ZStack(alignment: .leading){
                        OneQuestionView(img: "medoc", titre: "Merci de nous indiquer votre :")
                            .padding(.bottom, 40.0)
                           
                      
                        VStack(alignment: .leading){
                            
                            TextField("Veuillez saisir votre âge", text: $age).textFieldStyle(RoundedBorderTextFieldStyle()).font(.callout).padding(.horizontal, 35.0)
                            Text(" \(age)")
                             
                         TextField("Veuillez saisir votre taille", text: $taille).textFieldStyle(RoundedBorderTextFieldStyle()).font(.callout).padding(.horizontal, 35.0)
                           Text(" \(taille)")
                            
                            TextField("Veuillez saisir votre poids", text: $poids).padding(.horizontal, 35.0).textFieldStyle(RoundedBorderTextFieldStyle()).font(.callout)
                                                      Text(" \(poids)")
                                
                        }
                        
                    }
                    .padding([.leading, .trailing], 111.0)
                    OneQuestionView(img: "medoc", titre: "Avez-vous des prédispositions ?")
                  
                
                    
                    Button(action: {}) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 140.0, height: 40.0)
                                                   .foregroundColor(.white)
                                                   .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                                                   .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                                                   
                                                   .overlay(
                                                       Text("Confirmer")
                                                        .fontWeight(.light)
                                                           .foregroundColor(.black)
                                                        .font(.callout)
                                                        )
                    }
                    .padding(.top)
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
