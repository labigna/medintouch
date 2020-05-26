//
//  recherche.swift
//  medintouch
//
//  Created by Claire Siméon on 25/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct recherche: View {
    @State private var page = 0
    @State private var choice: Bool = false
    @State private var recherche: String = ""
    
    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().backgroundColor = .clear
        //UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        ZStack(alignment: .center){
            
            Image("fond1").resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                rechercheListView(img: "fleur", titre: "Botanique")
                    .padding(.vertical, 5.0)
                
                
                
                Text("Articles de la catégorie")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(.bottom, 5.0)
                  
                
                List{
                    VStack(alignment: .leading) {
                        NavigationLink(destination: ArticlesView()){
                            HStack{
                                rechercheListPic(img: "romarin", titre: "")
                                Text("Les différents bienfaits du bourgeon de romarin")
                                    .font(.body)
                                    .fontWeight(.light)
                                                                }
                        }.foregroundColor(.black)
                          
                         NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "thym", titre: "")
                            Text("Le thym et ses vertus bienfaisantes contre la toux.")
                                .font(.body)
                                .fontWeight(.light)
  
                        }
                             }.foregroundColor(.black)
                             NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "marguerite", titre: "")
                            Text("La marguerite en infusion et décoction.")
                                .font(.body)
                                .fontWeight(.light)
                        }
                         }.foregroundColor(.black)
                                 NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "fougere", titre: "")
                            Text("Plantes préhistoriques : la Fougère.")
                               .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                                     NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "rose", titre: "")
                            Text("Le bourgeon de rose et son utilisation en gemmothérapie.")
                               .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                                         NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "cactus", titre: "")
                            Text("Les bienfaits étonnant du jus de cactus.")
                              .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                         NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "lavande", titre: "")
                            Text("La lavande : une plante aux multiples vertues.")
                                .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                             NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "sakura", titre: "")
                            Text("Pourquoi le Ohanami est-il important et à quelle période être présent.")
                                .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                                 NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "nenuphar", titre: "")
                            Text("Comment profiter des vertus du nénuphar en phytothérapie.")
                            .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                                     NavigationLink(destination: ArticlesView()){
                        HStack{
                            rechercheListPic(img: "tournesol", titre: "")
                            Text("Tournesol : propriétés et utilisations de ses graines.")
                              .font(.body)
                                                               .fontWeight(.light)
                        } }.foregroundColor(.black)
                    }
                }
            }
        }
    }
}


struct recherche_Previews: PreviewProvider {
    static var previews: some View {
        recherche()
    }
}
