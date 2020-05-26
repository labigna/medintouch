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
                    //                                        titre
                    Spacer()
                    Text("Médecin").font(.title).bold()
                        .padding(.trailing, 40.0)
                }
                .padding(.bottom, 60.0)
                
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
                        .font(.largeTitle)
                        .padding(.vertical)
                    
                    Text ("Homéopathe")
                        .font(.title)
                        .padding(.vertical, -13.0)
                    HStack{
                        //    Contact
                        Text("12 Place de gaulle\n13001 Marseille\n07 98 65 98 72\n03 54 65 78 98")
                            .font(.body)
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
                            .font(.body)
                            .fontWeight(.light)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 3.0)
                    }
                    HStack{
                        // Boutton phone
                        Image("fond vert")
                            .resizable()
                            .mask(
                                RoundedRectangle(cornerRadius: 10))
                            .frame(width: 140.0, height: 35.0)
                            .overlay( RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(.white))
                            .overlay(
                                Image("phone")
                                    .foregroundColor(.white))
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 2, y: 5)
                            
                            .padding(.trailing, 40)
                        // boutton rdv
                        Image("fond vert")
                            .resizable()
                            .mask(
                                RoundedRectangle(cornerRadius: 10))
                            .frame(width: 140.0, height: 35.0)
                            .overlay( RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(.white))
                            .overlay(
                                Text("RDV")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .opacity(1.0)
                                    .multilineTextAlignment(.center))
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 2, y: 5)
                    }
                    .padding( 30.0)
                    
                }  .padding(.bottom, 80)
                
            }
        }.navigationBarHidden(false)
    }
}

struct ContactDocView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDocView()
    }
}



