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
                
                Text("Bienvenue sur Med'in'Touch !").font(.headline)
                
                ScrollView{
                   
                    ZStack{
                    OneQuestionView(img: "medoc", titre: "quoi")
                        VStack{
                            Text("hello")
                            Text("hello")
                            Text("hello")
                    }
                    }
                    
                    ZStack{
                    OneQuestionView(img: "medoc", titre: "Veuillez préciser votre :")
                        VStack{
                            Text("Pseudo (à voir)")
                            Text("âge")
                            Text("taille")
                            Text("poids")
                        }
                        }
                    OneQuestionView(img: "medoc", titre: "Veuillez préciser votre :")
                    OneQuestionView(img: "medoc", titre: "Veuillez préciser votre :")
                    
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
