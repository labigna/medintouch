
//
//  rechercheListView.swift
//  medintouch
//
//  Created by Claire Siméon on 25/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

import SwiftUI

struct rechercheListPic: View {
    var image: String = ""
    var title: String = ""
    
    
    init(img : String, titre : String) {
        self.image = img
        self.title = titre
    }
    
    var body: some View {
        
        
        HStack{
            // Image catégorie
            Image(self.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70.0, height: 50.0)
                .mask(RoundedRectangle(cornerRadius: 20))
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 2, y: 2)
              
                .overlay(
                    
                    VStack{ Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame( height: 0.0, alignment: .bottom)
                            .foregroundColor(.black)
                            .opacity(0.5)
                            
                            .overlay(
                                
                                Text(self.title)
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.white)
                                
                        )
                    }
            )
        }
        .frame(width: 50, height: 50)
        .padding(.horizontal, 10.0)
    }
}

struct rechercheListPic_Previews: PreviewProvider {
    static var previews: some View {
        rechercheListPic(img: "romarin", titre: "")
    }
}
