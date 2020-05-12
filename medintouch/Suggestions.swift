//
//  Suggestions.swift
//  medintouch
//
//  Created by philippe moniez on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct Suggestions: View {
    
    
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
                /*Button(action: {},
                       label:
                    {*/
                    Text("<").foregroundColor(.gray)
                        //.padding(.leading, 15.0)
                        .font(.system(size:30))
                        
                //}
                //)
                }
                //}
                //)
                Spacer()
                Text("Suggestions").bold().font(.system(size: 30))
                Spacer()
            }.padding(.bottom, 30.0)
            
                Image("épices").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 320, height: 180).mask(RoundedRectangle(cornerRadius: 20)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
            
// Titres
            Text("Epices et bien-être:")
                .bold()
                .font(.system(size:20)).padding(.vertical, 8.0)
            Text("Quels épices utiliser pour améliorer sa santé?")
                .bold()
                .font(.system(size:14))
            
// Cadre et texte
            RoundedRectangle(cornerRadius: 20)
            .fill(Color.breakWhite)
              .frame(width: 320.0, height: 300.0)

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
                        Text("Si les épices ont tant de vertus, encore faut-il bien s'en servir. Mais les épices sont-elles vraiment une clé pour se soigner ou sont-elles de simples compléments? Les réponses avec un chef passionné par les épices, et une nutritionniste spécialiste du sujet.")
                    .font(.system(size:15)).foregroundColor(.gray).padding()
                        Text("Les épices, une richesse pour nos papilles et pour notre santé? Depuis l'Antiquité, l'homme traverse océans et continents en quête d'épices pour cuisiner mais aussi pour se soigner. Cette science a traversé les siècles et intéresse aujourd'hui les médecins comme les nutritionnistes. Le premier intérêt des épices est d'alléger les plats comme le confirme Nathalie Hutter-Lardeau, nutritionniste: Les épices vont permettre d'alléger en sucres, en gras, en sel mais pas d'alléger en goût. Il faut justement avoir une palette de goûts et des vertus santé")
                        .font(.system(size:15)).foregroundColor(.gray).padding()
                }
                )
                    
                    
                    )
            
            
        }//.edgesIgnoringSafeArea(.top)
        }
    }
}

struct Suggestions_Previews: PreviewProvider {
    static var previews: some View {
        Suggestions()
    }
}
