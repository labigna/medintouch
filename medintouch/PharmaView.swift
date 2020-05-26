//
//  PharmaView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct PharmaView: View {
    
     @Binding var navigationBarIsHidden : Bool
    
    var body: some View {
        ZStack{
            Image("fond1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                //Navigation bar
                HStack{
                    
                    //                                        titre
                    Spacer()
                    Text("Pharmacie").font(.title).bold()
                        .padding(.trailing, 40.0)
                }
                .padding(.bottom, 60.0)
                
                
                Image ("phototo")
                    
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 220.0, height: 210.0)
                    .mask(Circle())
                    
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                //NOM et Metier
                Text("Pharmacie")
                    .font(.title)
                    .padding()
                
                Text ("Herboristerie Du Père Blaise")
                    .font(.title)
                    .padding(.vertical, -13.0)
                HStack{
                    //    Contact
                    Text("4-6 Rue Meolan\ndu PèreBlaize\n13001 Marseille\n04 22 67 80 11")
                        .font(.body)
                        .fontWeight(.light)
                        .multilineTextAlignment(.trailing)
                        .padding([.top, .bottom, .trailing], 35.0)
                    //barre de separation
                    Divider()
                        .padding([.top, .leading], -27.0)
                        .frame(width: -15.0, height: 67.0)
                        .multilineTextAlignment(.center)
                    //heure d'ouverture
                    Text("pereblaize.fr\nouverture:\n09:30–18:30")
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding([.top, .leading], -18.0)
                }
                .padding(.leading, -26.0)
                
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
                
            }
            .padding(.bottom, 80)
        } .onAppear(perform: {
               self.navigationBarIsHidden = false
           })
        .navigationBarTitle("")
        .navigationBarHidden(self.navigationBarIsHidden)
    }
}

struct PharmaView_Previews: PreviewProvider {
    static var previews: some View {
        PharmaView(navigationBarIsHidden: .constant(false))
    }
}

