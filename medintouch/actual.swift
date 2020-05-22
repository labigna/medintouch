//
//  actual.swift
//  medintouch
//
//  Created by Claire Siméon on 13/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct actual: View {
    
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
                Image("fond vert").resizable()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    HStack{
                        Spacer()
                        
                        Spacer()
                        Text("Actualités").font(.title).bold()
                        
                        Spacer()
                    }
                    .padding(.all, -55.0)
                    
                    
                    
                    // Le saviez-vous ?
                    
                    Button(action: {}) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 180.0, height: 40.0)
                                .foregroundColor(.white)
                                .shadow(color: Color.white, radius: 10, x: -5, y: -5)
                                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                                
                                .overlay(
                                    Text("Le saviez-vous ? ")
                                        .fontWeight(.light)
                                        .foregroundColor(.black)
                                        .font(.headline)
                                        .padding(.all, 8.0))
                                .padding(.leading, 280.0)
                            Image("saviez").renderingMode(.original).resizable()
                                
                                .frame(width: 120.0, height: 120.0)
                                .clipShape(Circle())
                                
                                .overlay(
                                    Circle().stroke(Color.gray, lineWidth: 1))
                                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                                .shadow(color: Color.white, radius: 10, x: -5, y: -5)
                        }
                    }
                    .padding(.trailing, 160.0)
                    
                    Divider()
                        .padding([.top, .leading], 4.0)
                        .frame(width: 300.0, height: 43.0)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 10, x: -5, y: -5)
                    
                    Text("Suggestions de saison")
                        .font(.headline)
                        .fontWeight(.thin)
                    
                    
                    ScrollView(.horizontal){
                        HStack{
                            // Articles
                            
                            OneActualView(img: "epice", titre: "Epices et bien-être")
                            
                            OneActualView(img: "aloe", titre: "L'Aloe Vera")
                            
                            OneActualView(img: "coquelicot", titre: "Le pavot")
                            
                            OneActualView(img: "nut", titre: "La châtaigne")
                            OneActualView(img: "tisane", titre: "Infusion aux herbes")
                        }
                    }
                    
                    
                    Spacer()
                    
                    
                    // Texte articles
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 300.0, height: 70.0)
                        .overlay(  RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                            .blur(radius: 4))
                        .offset(x: 2, y: 2)
                        .mask(RoundedRectangle(cornerRadius: 20)
                            .fill(LinearGradient(gradient: Gradient (colors: [Color.black,Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                        .overlay(
                            Text("Défilez afin de découvrir les différents bienfaits en fonction de la saison.")
                                .font(.caption)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                    )
                    Spacer()
                }
            }
        }
    }
}


struct actual_Previews: PreviewProvider {
    static var previews: some View {
        actual()
    }
}
