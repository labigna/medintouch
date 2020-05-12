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
                        
                        Image ("Medecin")
                            
                        .resizable()
                        .frame(width: 220.0, height: 210.0)
                            .padding(.bottom, 300.0)
                        
                        VStack{
                            
                            Text("Torrel Yannick")
                                .padding(.top, 141.0)
                            
                            Text ("Homéopathe")
                                     .font(.title)
HStack{
                                 Text("12 Place de gaulle 13001 Marseille  07 98 65 98 72  03 54 65 78 98.")
                                     .font(.subheadline)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
    
    Text("Consultations                Du lundi au vendredi De 9h à 17h")
        .multilineTextAlignment(.leading)
    
                                    }

                            HStack{
// phone
                                RoundedRectangle(cornerRadius: 10)
                                .padding(0.0)
                                .frame(width: 140.0, height: 35.0)
                                .foregroundColor(Color.purple)
                                .overlay(
                                 Image("phone")
                                .foregroundColor(.white))
// rdv
                                RoundedRectangle(cornerRadius: 10)
//                                .padding(.trailing, -30.0)
                                .frame(width: 140.0, height: 35.0)
                                .foregroundColor(Color.purple)
                                .overlay(
                                            Text("RDV")
                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                                .opacity(1.0)
                                                .multilineTextAlignment(.center))
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
 

