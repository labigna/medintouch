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
                            Image ("Medecin")
                                                   .resizable()
                                                       .aspectRatio(contentMode: .fill)
                                                   .frame(width: 220.0, height: 210.0)
                                                   .mask(Circle())
                            
                            Text("Torrel Yannick")
                                .padding(.bottom)
                             
                            
                            Text ("Homéopathe")
                                     .font(.title)
                                .padding(.bottom, -17.0)
HStack{
    
                                 Text("12 Place de gaulle\n13001 Marseille\n07 98 65 98 72\n03 54 65 78 98")
                                     .font(.subheadline)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 16.0)
    Divider()
        .padding([.top, .leading, .trailing], 12.0)
        .frame(width: -8.0, height: 123.0)
    .multilineTextAlignment(.center)
    
    Text(" Consultations \n Du lundi au vendredi\n De 9h à 17h")
        .font(.subheadline)
        .fontWeight(.light)
        .foregroundColor(Color.black)
        .multilineTextAlignment(.leading)
        .padding(.leading, 3.0)
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
 

