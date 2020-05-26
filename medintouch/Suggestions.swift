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
                    Spacer(minLength: 210)
                    Text("Suggestions").bold().font(.system(size: 30))
                    Spacer()
                }.padding(.bottom, 30.0)
                
                Image("epices").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 220, height: 130).mask(RoundedRectangle(cornerRadius: 20)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                
                // Titres
                Text("Epices et bien-être:")
                    .bold()
                    .font(.system(size:25)).padding(.vertical, 8.0)
                Text("Quels épices utiliser pour améliorer sa santé?")
                    .bold()
                    .font(.system(size:17))
                
                // Cadre et texte
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("fondColor1"))
                    .frame(width: 320.0, height: 350.0)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 10)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading)
                                )
                        )
                            .overlay(
                                VStack{
                                    ScrollView{
                                        
                                        Text("Les épices, une richesse pour nos papilles et pour notre santé?\n Depuis l'Antiquité, l'homme traverse océans et continents en quête d'épices pour cuisiner mais aussi pour se soigner.\n Cette science a traversé les siècles et intéresse aujourd'hui les médecins comme les nutritionnistes.\n Le premier intérêt des épices est d'alléger les plats comme le confirme Nathalie Hutter-Lardeau, nutritionniste: Les épices vont permettre d'alléger en sucres, en gras, en sel mais pas d'alléger en goût.\n Il faut justement avoir une palette de goûts et des vertus santé")
                                            .font(.headline)                                    .fontWeight(.light).foregroundColor(.black).multilineTextAlignment(.center).padding()
                                    }
                                    
                                }
                        )
                )
            }
            .padding(.bottom, 90)
        }
    }
}

struct Suggestions_Previews: PreviewProvider {
    static var previews: some View {
        Suggestions()
    }
}
