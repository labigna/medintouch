//
//  OneSuiviBienEtreView.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI


struct OneSuiviBienEtreView: View {
    private var image: String = "fond1"
    private var title: String = ""
    private var choice: Int = 1
    
    
    init(img : String, titre : String, choix: Int) {
        self.image = img
        self.title = titre
        self.choice = choix
    }
    
    var body: some View {
        
        
        HStack{
            // Image catégorie
            
            
            
            NavigationLink( destination: ChoiceView(choix: self.choice))
            { Image(self.image).renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 110.0)
                .mask(RoundedRectangle(cornerRadius: 20))
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.10), radius: 10, x: -10, y: -10)
                
                .overlay(
                    
                    VStack{ Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame( height: 40.0, alignment: .bottom)
                            .foregroundColor(.black)
                            .opacity(0.5)
                            
                            .overlay(
                                
                                Text(self.title)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                
                        )
                    }
                )
                
            }
            
        }
    }
}




struct OneSuiviBienEtreView_Previews: PreviewProvider {
    static var previews: some View {
        OneSuiviBienEtreView(img: "medoc", titre: "complément", choix: 1)
    }
}
