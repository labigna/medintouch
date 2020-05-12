//
//  GraphView.swift
//  medintouch
//
//  Created by Labigna Traoré on 12/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct GraphView: View {
    var body: some View {
        HStack{
            CapsuleView(value: 80, couleur: .blue)
            CapsuleView(value: 50, couleur: .yellow)
            
            CapsuleView(value: 20, couleur: .green)
            CapsuleView(value: 90, couleur: .red)
        }
        
    }
}

struct CapsuleView: View  {
    
    var pourcentage : Int
    var color : Color
    
    init(value: Int, couleur: Color){
        self.pourcentage = value
        self.color = couleur
    }
    
    var body: some View {
        Capsule()
            .fill(Color(UIColor.systemGray6))
            
        
        .overlay(
            Capsule()
                .stroke(Color.gray, lineWidth: 5)
                .blur(radius: 6)
                .offset(x: 5, y: 2)
                .mask(Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing))))
        .overlay(
            Capsule()
                .stroke(Color.white, lineWidth: 5)
                .blur(radius: 3)
                .offset(x: -2, y: -2)
                .mask(Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint: .topLeading))))
            
            .overlay(LinearGradient(gradient: Gradient(colors: [Color.white, self.color, self.color]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .mask(Capsule())
         .frame(height: CGFloat(pourcentage*2))
        .padding(.top, CGFloat(200-pourcentage*2)))
            
            
               
                
            
            .frame(width: 50, height: 200)
    }
}
struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}
