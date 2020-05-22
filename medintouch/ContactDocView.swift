//
//  ContactDocView.swift
//  medintouch
//
//  Created by abouhadji on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ContactDocView: View {
    
    var body: some View {
        
//fond
                    ZStack{
                        Image("fond1")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                      VStack{
                      HStack{
                                                  Circle()
                                                                                     .frame(width: 30.0, height: 30.0)
                                                                                     .foregroundColor(.white)
                                                                                 .overlay(Button(action: {},
                                                                                        label:
                                                                                     {Text("< ").foregroundColor(.gray)
                                                                                         .padding([.leading, .bottom], 2.0)
                                                                                         
                                                                                 }
                                                                                 ))
                                             //                                        titre
                                                                                     .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                                                                                                     
                                                                                             Spacer()
                                                                                             Text("PHARMACIE").font(.title).bold()
                                                                                                 .padding(.trailing, 15.0)}
                        .padding([.leading, .bottom], 42.0)
                        
                        VStack{
                            
                            Image ("Medecin")
                            
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 220.0, height: 210.0)
                                    .mask(Circle())
                              
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
//NOM et Metier
                            Text("Torrel Yannick")
                                .padding(.vertical)
                   
                            Text ("Homéopathe")
                                     .font(.title)
                                .padding(.vertical, -13.0)
HStack{
//    Contact
                                 Text("12 Place de gaulle\n13001 Marseille\n07 98 65 98 72\n03 54 65 78 98")
                                     .font(.subheadline)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.trailing)
                                    .padding(.trailing, 16.0)
//barre de separation
    Divider()
        .padding([.top, .leading], 4.0)
        .frame(width: -15.0, height: 120.0)
    .multilineTextAlignment(.center)
//heure d'ouverture
    Text("  Consultations \n  Du lundi au vendredi\n  De 9h à 17h")
        .font(.subheadline)
        .fontWeight(.light)
        .foregroundColor(Color.black)
        .multilineTextAlignment(.leading)
        .padding(.leading, 3.0)
                                    }

                            HStack{
                                
// Boutton phone
                                RoundedRectangle(cornerRadius: 10)
                                .padding(0.0)
                                .frame(width: 140.0, height: 35.0)
                                .foregroundColor(Color.purple)
                                .overlay(
                                 Image("phone")
                                .foregroundColor(.white))
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
// boutton rdv
                                RoundedRectangle(cornerRadius: 10)
                                .frame(width: 140.0, height: 35.0)
                                .foregroundColor(Color.purple)
                                .overlay(
                                            Text("RDV")
                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                                .opacity(1.0)
                                                .multilineTextAlignment(.center))
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                }
                            .padding( 3.0)
                            
                            }
                           
                        }
    }
}

struct ContactDocView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDocView()
    }
}
 

}
