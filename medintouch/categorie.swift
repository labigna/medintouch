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
 // Barre de recherche
                            VStack{

     TextField("🔎  Rechercher par mot-clef", text: self.$recherche)
                      .padding(.all, 7.0)
        .frame(width: 350.0, height: 35.0)
        .overlay(RoundedRectangle(cornerRadius: 10)
                      .stroke(Color.white, lineWidth: 1)) .background(Color.white)
                      .shadow(color: Color.black.opacity(0.3), radius: 10, x: 5, y: 5)
                      .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
 
                             
// Image catégorie + txt
                                    HStack{
 
             OneCategorieView(img: "aliment", titre: "Alimentation")
                                 Spacer()
             OneCategorieView(img: "mask", titre: "Beauté Maison") }
                                    .padding([.top, .leading, .trailing], 26.0)
                                    
                                    HStack{
                                        
             OneCategorieView(img: "fleur", titre: "Botanique")
                                  Spacer()
             OneCategorieView(img: "medoc", titre: "Complément") }
                                    .padding([.top, .leading, .trailing], 26.0)
                                
                                    HStack{
                                        
              OneCategorieView(img: "water", titre: "Aquathérapie")
                                   Spacer()
              OneCategorieView(img: "oil", titre: "Aromathérapie") }
                                    .padding([.top, .leading, .trailing], 26.0)
                                
                                    HStack{
          
              OneCategorieView(img: "massage", titre: "Massages")
                                    Spacer()
              OneCategorieView(img: "yoga", titre: "Yoga") }
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
