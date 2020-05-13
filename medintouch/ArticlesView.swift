//
//  ArticlesView.swift
//  medintouch
//
//  Created by philippe moniez on 12/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ArticlesView: View {
    var body: some View {
        ZStack{
                    Image("fond1").resizable().edgesIgnoringSafeArea(.all)
            
                VStack{
                    
                    HStack{
                        Spacer()
                        
        // Bouton Back
                        //NavigationLink(destination: , label: {
                        ZStack{
                            Circle()
                                .frame(width: 30.0, height: 30.0).foregroundColor(.white).shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                        
                            Text("<").foregroundColor(.gray)
                                .font(.system(size:30))
                                
                        
                        }
                        //}
                        //)
                        Spacer()
                            .padding(.trailing)
                        Text("Articles").bold().font(.system(size: 30))
                        Spacer()
                    }.padding(.bottom, 11.0)
                    
                        Image("bourgeon").resizable().aspectRatio(contentMode: .fill)
                            .frame(width: 280, height: 130).mask(RoundedRectangle(cornerRadius: 20)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10).padding(.top, -13.0)
                    
        // Titres
                    Text("Botanique:")
                        .bold()
                        .font(.system(size:20)).padding(.vertical, 8.0)
                    Text("Les différents bienfaits du bourgeon de romarin:")
                        .bold()
                        .font(.system(size:14))
                    
        // Cadre et texte
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                      .frame(width: 320.0, height: 380.0)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4)
                        .blur(radius: 4)
                        .offset(x: -2, y: -2)
                        .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading)
                        )
                    )
                        .overlay(
                            
                            
                            VStack{
                                Text("Hépatite, cirrhose :").font(.system(size:15)).foregroundColor(.black)
                                    .padding(.bottom, -12.0)
                                Text("le macérat de jeunes pousses de romarin est sans conteste la plante du foie. En plus de régénérer le foie et le détoxifier, il participe à sa protection et agit ainsi sur l'ensemble de l'organisme. C'est également un anti-oxydant qui lutte contre la formation des radicaux libres et protège ainsi différents organes ou tissus.")
                                    .font(.system(size:15)).foregroundColor(.gray).padding()
                                Text("Fatigue, déprime :").font(.system(size:15)).foregroundColor(.black)
                                    .padding(.bottom, -12.0)
                                Text("l'action détoxifiante du macérat de jeunes pousses de romarin est également visible sur le système nerveux. Il va agir en améliorant la mémoire, diminuant la fatigue et en apportant du bien-être.")
                                .font(.system(size:15)).foregroundColor(.gray).padding()
                                Text("Dérèglements de la thyroïde :").font(.system(size:15)).foregroundColor(.black)
                                    .padding(.bottom, -12.0)
                                Text("le macérat de jeunes pousses de romarin influence l'ensemble du corps en agissant sur le foie. Il permet de gérer notamment les dérèglements de certaines glandes comme la thyroïde par exemple.")
                                .font(.system(size:15)).foregroundColor(.gray).padding()
                        }
                        )
                            
                            
                            )
                    
                    
                }//.edgesIgnoringSafeArea(.top)
                }
       

    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
