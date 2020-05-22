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
                        
                        Spacer()
                        ZStack{
                            
        //Navigation bar
                            Circle()
                                .frame(width: 30.0, height: 30.0)
                                .foregroundColor(.white)
                                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                            
                            
                            Button(action: {},
                                   label:
                                {Text("< ").foregroundColor(.gray)
                                    
                            }
                            )
                        }
                        Spacer()
                        Spacer()
                        Text("Recherche").font(.title).bold()
                        
                        Spacer()
                    }
                    .padding(.top, -60.0)
                    
                    
                    
                    // Barre de recherche
                    VStack{
                        
                        TextField("🔎  Rechercher par mot-clef", text: self.$recherche)
                            .foregroundColor(Color.black)
                            .padding(.all, 33.0)
                            .frame(width: 350.0, height: 50.0)
                            .overlay( RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                                .frame(width: 320.0, height: 44.0)
                                .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 3)
                                    .blur(radius: 3))
                                .offset(x: 2, y: 4)
                                .mask(RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(gradient: Gradient (colors: [Color.black,Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                        )
                    }
                    // Image catégorie + txt
                    ScrollView{
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
