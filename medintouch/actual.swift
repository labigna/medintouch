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
                        Text("Actualités").font(.title).bold()
                                         
                                        Spacer()
                    }
                    .padding(.all, -55.0)
                                       
                    ZStack{
                   
           // Le saviez-vous ?
            Button(action: {}) {
                Image("saviez").renderingMode(.original).resizable()
                               .frame(width: 120.0, height: 120.0)
                               .clipShape(Circle())
                               .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                               .shadow(color: Color.white, radius: 10, x: -5, y: -5)
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
                }
                    }
                                       Spacer()
                 
                        Text("Suggestions de saison")
                            .font(.headline)
                            .fontWeight(.thin)
                    
                        HStack{
            // Articles
                  OneActualView(img: "epice", titre: "Epices et bien-être")
                       
                  OneActualView(img: "aloe", titre: "L'Aloe Vera")
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
