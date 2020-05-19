//
//  OneSuiviBienEtreView.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI


        struct OneSuiviBienEtreView: View {
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
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150.0, height: 130.0)
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


struct OneSuiviBienEtreView_Previews: PreviewProvider {
    static var previews: some View {
        OneSuiviBienEtreView(img: "medoc", titre: "complément")
    }
}