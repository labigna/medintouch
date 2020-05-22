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
                
             
                
                Text("Bienvenue sur Med'in'Touch !").font(.headline).padding(.vertical, 30.0)
                
           
                
                ScrollView{
                   
                    ZStack{
                    OneQuestionView(img: "medoc", titre: "Veuillez sélectionner un avatar : ")
                       Button(action: {}) { Image("icon").resizable()
                            .frame(width: 150.0, height: 150.0)
                        .foregroundColor(.black)
                    }
                    }
                    
                    ZStack(alignment: .leading){
                        OneQuestionView(img: "medoc", titre: "Merci de nous indiquer votre :")
                           
                        
                        VStack(alignment: .leading){
                           
                            Text("Âge :")
                                .font(.callout)
                                .padding(.vertical, 15.0)
                            Text("Taille :")
                                .font(.callout)
                                .padding(.vertical, 15.0)
                            Text("Poids :")
                                .font(.callout)
                                .padding(.vertical, 15.0)
                                
                        }
                        .padding(.leading, 50.0)
                        }
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
