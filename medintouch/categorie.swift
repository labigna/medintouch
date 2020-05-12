//
//  categorie.swift
//  medintouch
//
//  Created by Claire Siméon on 12/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct categorie: View {
    
    @State private var page = 0
    @State private var choice: Bool = false
    @State private var recherche: String = ""
    
    init() {
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
                  NavigationView{
                           
                    ZStack{
    
    Image("fond vert")
          .resizable()
          .edgesIgnoringSafeArea(.all)
                               
                         VStack{
                            
                            HStack{
                                                            
                                ZStack{
//Navigation bar
           Circle()
              .frame(width: 30.0, height: 30.0)
              .foregroundColor(.white)
              .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
            .padding([.leading, .bottom], 15.0)
                                      
 Button(action: {},
        label:
    {Text("< ").foregroundColor(.gray)
        .padding([.leading, .bottom], 15.0)
                                              }
                                              )
                                              }
                               Spacer()
   
     Text("Recherche").font(.title).bold()
        .padding([.bottom, .trailing], 15.0)
                                                                  
                                                                     }
                               Spacer()

                            VStack{
 // Barre de recherche
     TextField("🔎  Rechercher par mot-clef", text: self.$recherche)
                      .padding(.all, 7.0)
        .frame(width: 350.0, height: 35.0)
        .overlay(RoundedRectangle(cornerRadius: 10)
                      .stroke(Color.white, lineWidth: 1)) .background(Color.white)
                      .shadow(color: Color.black.opacity(0.3), radius: 10, x: 5, y: 5)
                      .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
  //txt catégorie
                             

                                    HStack{
 // Image catégorie
        Image("medoc")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 130.0)
            .mask(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                  
            .overlay( Text("categorie is").foregroundColor(.white)
                                                                         .font(.caption)
                .fontWeight(.semibold))
            
                                                                
                                        
                                 Spacer()
        Image ("water")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(.trailing)
            .frame(width: 150.0, height: 130.0)
            .mask(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                    }
                                    .padding([.top, .leading, .trailing], 26.0)
                                    
                                    HStack{
        Image ("fleur")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                              Spacer()
        Image ("aliment")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                                                       }
                                    .padding([.top, .leading, .trailing], 26.0)
                                
                                HStack{
         Image ("oil")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                                          Spacer()
         Image ("yoga")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                                   }
            .padding([.top, .leading, .trailing], 26.0)
                                HStack{
          
         Image ("mask")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                                          Spacer()
         Image ("massage")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 150.0, height: 130.0)
             .mask(RoundedRectangle(cornerRadius: 20))
             .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                                                  }
             .padding([.top, .leading, .trailing], 26.0)
                                    }
                                    }
                                    }
                                }
            }
        }

    

struct categorie_Previews: PreviewProvider {
    static var previews: some View {
        categorie()
    }
}
