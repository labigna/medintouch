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
        
        
        
        VStack{
            HStack{
                Spacer()
                ZStack{
                    Circle()
                        .frame(width: 40.0, height: 40.0).foregroundColor(.breakWhite2).shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                Button(action: {},
                       label:
                    {Text("<").foregroundColor(.gray).font(.system(size:30))
                        
                }
                    )
                }
                Spacer()
                Text("Suggestions").bold().font(.system(size: 30)).padding(.vertical, 21.0)
                Spacer()
            }
            ZStack{
                Image("cerf").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 320, height: 180).mask(RoundedRectangle(cornerRadius: 25)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
            }
                
            Text("Epices et bien-être:")
                .bold()
                .font(.system(size:20)).padding(.vertical, 8.0)
            Text("Quels épices utiliser pour améliorer sa santé?")
                .bold()
                .font(.system(size:14))
            
            Rectangle()
                .frame(width: 320.0, height: 300.0)
                .foregroundColor(.breakWhite).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.2), radius: 10, x: 0, y: 0)
                .padding().overlay(Rectangle().frame(width: 280.0, height: 265.0)
                .foregroundColor(.white))
                .overlay(Text("Si les épices ont tant de vertus, encore faut-il bien s'en servir. Mais les épices...")
                .font(.system(size:15)).foregroundColor(.gray).padding()
            )
            
        }
    }
}

struct Suggestions_Previews: PreviewProvider {
    static var previews: some View {
        Suggestions()
    }
}
