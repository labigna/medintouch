//
//  actualite.swift
//  medintouch
//
//  Created by Claire Siméon on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct actualite: View {
    
    @State private var page = 0
    @State private var choice: Bool = false
    @State private var recherche: String = ""
    
    init() {
        
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .center){
                
   Image("fond vert").resizable()
                     .edgesIgnoringSafeArea(.all)
                     .navigationBarTitle("Actualités")
                     .navigationBarItems(leading:
                                             
          Button(action: {
                            print("Back")}) {
        Text("< ")} )
               
           
                    
                
                    HStack{
        Button(action: {}) {  Image("saviez").renderingMode(.original).resizable()
                                     .frame(width: 70.0, height: 70.0)
                                     .clipShape(Circle())
                            
          Text("Le saviez-vous ? ")
                                     .font(.footnote)
                                     .padding(8)
                                     .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 1))}
                
                }
                
          
            
            HStack{
                VStack{
                    
                Text("Suggestions de saison")
                                                                     .font(.footnote)
                                                                     .fontWeight(.thin)
                                                                 
                Text("texte actu")
                                                                     .font(.caption)
                                                                     .fontWeight(.light)
          }
                }
                    
                

                        List{
                    
                        VStack{
                                
                                HStack{
                                    
                                    Image("epice").resizable()
                                        .frame(width: 300.0, height: 200.0)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay((RoundedRectangle(cornerRadius: 10)).stroke(Color.black, lineWidth: 1))
                                    HStack{
                                        
                                        
                                        Text("Epices et bien être")
                                            .font(.footnote)
                                            .fontWeight(.thin)
                                        
                                         
                                    }

                                    
                                    Image("water").resizable()
                                                                           .frame(width: 120.0, height: 120.0)
                                                                           .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                           .overlay((RoundedRectangle(cornerRadius: 10)).stroke(Color.black, lineWidth: 1))
                                    Image("aloe").resizable()
                                                                           .frame(width: 120.0, height: 120.0)
                                                                           .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                           .overlay((RoundedRectangle(cornerRadius: 10)).stroke(Color.black, lineWidth: 1))
                                    
                                 
                                    
                                    Spacer()
                                }
                            }
                        }
                        
                    }
                }
            }
        }



struct actualite_Previews: PreviewProvider {
    static var previews: some View {
        actualite()
    }
}
