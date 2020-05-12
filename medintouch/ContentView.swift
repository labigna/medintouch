//
//  ContentView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
               ZStack{
                                 Image("fond1")
                                     .resizable()
                                     .edgesIgnoringSafeArea(.all)
                                
                                 
                               
                                 
                                 VStack{
                                     Image ("phototo")
                                     
                                             .resizable()
                                             .aspectRatio(contentMode: .fill)
                                             .frame(width: 220.0, height: 210.0)
                                             .mask(Circle())
                                       
                                     .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                                     .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
         //NOM et Metier
                                     Text("PHARMACIE")
                                        .font(.title)
                                         .padding()
                            
                                     Text ("Herboriste Du Père Blaise")
                                              .font(.title)
                                         .padding(.vertical, -13.0)
         HStack{
         //    Contact
                                          Text("4-6 Rue Meolan\ndu PèreBlaize\n13001 Marseille\n04 22 67 80 11")
                                              .font(.subheadline)
                                             .fontWeight(.light)
                                             .multilineTextAlignment(.trailing)
                                             .padding([.top, .bottom, .trailing], 35.0)
         //barre de separation
             Divider()
                 .padding([.top, .leading], -27.0)
                 .frame(width: -15.0, height: 67.0)
             .multilineTextAlignment(.center)
         //heure d'ouverture
             Text("pereblaize.fr\n ouverture:\n 09:30–18:30")
                 .font(.subheadline)
                 .fontWeight(.light)
                 .foregroundColor(Color.black)
                 .multilineTextAlignment(.leading)
                 .padding([.top, .leading], -18.0)
         }
         .padding(.leading, -17.0)

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
