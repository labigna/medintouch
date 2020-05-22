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

       
              
        RoundedRectangle(cornerRadius: 40)
            .padding(.vertical, 5.0)
            .padding(.horizontal, 17.0)
            .frame(width: 300.0, height:350.0)
                        .foregroundColor(Color(UIColor.systemGray6))
                        .shadow(color: .white, radius: 6, x: -5, y: -5)
                        .shadow(color: .gray, radius: 6, x: 5, y: 5)
                        
                        .overlay(
                            
                            Text(self.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                    )
        
    }
}

struct OneQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        OneQuestionView(img: "medoc", titre: "Question")
    }
}
