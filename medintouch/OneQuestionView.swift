//
//  OneQuestionView.swift
//  medintouch
//
//  Created by Claire Siméon on 13/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct OneQuestionView: View {
    
    var image: String = ""
    var title: String = ""
    
    
    init(img : String, titre : String) {
        self.image = img
        self.title = titre
    }
    
   
        var body: some View {
                                             VStack{
            // Image catégorie
                                                Image(self.image)
                   
                    .resizable()
                    .frame(width: 150.0, height: 130.0)
                    .overlay(

                       VStack{
                   
                           RoundedRectangle(cornerRadius: 40)
                                             .frame(width: 300.0, height:320)
                                             .foregroundColor(Color(UIColor.systemGray6))
                                             .shadow(color: .white, radius: 7, x: -14, y: -8)
                                             .shadow(color: .gray, radius: 10, x: 14, y: 8)

                   .overlay(

                    Text(self.title)
                           .font(.footnote)
                           .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)

                       )
                       }
                                                )
            }
            }
            
                        
    }

struct OneQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        OneQuestionView(img: "medoc", titre: "complément")
    }
}
