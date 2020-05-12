//
//  ContentView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                       ZStack{
                                Image("fond1")
                                    .resizable()
                                    .edgesIgnoringSafeArea(.all)
                               
                                VStack{
                                    Image ("thym")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 220.0, height: 210.0)
                                            .mask(Circle())
                                      
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                                    .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
        //NOM et Metier
                                    Text("THYM")
                                       .font(.title)
                                        .padding()
                           
        HStack{
        //    description
                                         Text("Le thym connu pour ses vertus bienfaisantes contre la toux. une bonne infusion de thym,par exemple,calme facilement les épisodes de toux et rhinopharyngés.")
                                             .font(.subheadline)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                            .padding(.all, 35.0)
        }
                                    
       RoundedRectangle(cornerRadius: 20)
        .fill(Color.offWhite)
          .frame(width: 120.0, height: 120.0)

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
            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                                    }
                                }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
