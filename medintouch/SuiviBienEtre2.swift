//
//  SuiviBienEtre2.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SuiviBienEtre2: View {
    
    
    var body: some View {

            ZStack{
                
                Image("fond1").resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                     Text("Catégories de suivi").bold().font(.system(size: 30))
                        .padding(.leading, 60)
                        .padding(.bottom, 10)
                    //ScrollView{
                    HStack{
                        OneSuiviBienEtreView(img: "peau", titre: "Peau", choix: 1)
                        OneSuiviBienEtreView(img: "articulation", titre: "Articulations", choix: 2)
                    }
                    HStack{
                        OneSuiviBienEtreView(img: "fatigue", titre: "Fatigue", choix: 3)
                        OneSuiviBienEtreView(img: "foie", titre: "Foie", choix: 4)
                    }
                    HStack{
                        OneSuiviBienEtreView(img: "digestion", titre: "Digestion", choix: 5)
                        OneSuiviBienEtreView(img: "sommeil", titre: "Sommeil", choix: 6)
                    }
                    HStack{
                        OneSuiviBienEtreView(img: "moral", titre: "Moral", choix: 7)
                        OneSuiviBienEtreView(img: "cholesterol", titre: "Soucis endocriniens", choix: 8)
                    }
                    HStack{
                        OneSuiviBienEtreView(img: "urinaire", titre: "Soucis urinaires", choix: 9)
                        OneSuiviBienEtreView(img: "cheveux", titre: "Problèmes de cheveux", choix: 10)
                    }
                }.padding(.top, -60.0)
            }
        .navigationBarTitle("")
    }
}

struct SuiviBienEtre2_Previews: PreviewProvider {
    static var previews: some View {
        SuiviBienEtre2()
    }
}
