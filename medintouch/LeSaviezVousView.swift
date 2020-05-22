//
//  LeSaviezVousView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct LeSaviezVousView: View {
    
    var body: some View {
        ZStack{
            
            Image("fond1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                //Navigation bar
                HStack{
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .foregroundColor(.white)
                        .overlay(Button(action: {},
                                        label:
                            {Text("< ").foregroundColor(.gray)
                                .padding(.leading, 2.0)
                                
                        }
                        ))
                        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                    
                    Spacer()
                    Text("Le Saviez-Vous?").font(.title).bold()
                        .padding(.trailing, 15.0)
                    
                }.padding([.leading, .bottom], 22.0)
                
                Image ("thym")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 220.0, height: 210.0)
                    .mask(Circle())
                    
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                //titre
                Text("THYM")
                    .font(.largeTitle)
                    .padding(.vertical, 4.0)
                
                //   descption
                Image("fond1")
                    .resizable()
                    .mask(Circle())
                    .frame(width: 320.0, height: 220.0)
                    
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
                    .overlay(Text("Le thym connu pour ses vertus bienfaisantes contre la toux. une bonne infusion de thym, par exemple, calme facilement les épisodes de toux et rhinopharyngées.")
                        .font(.headline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.all, 43.0))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LeSaviezVousView()
    }
}
