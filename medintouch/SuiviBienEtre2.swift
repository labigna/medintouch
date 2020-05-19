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
        ScrollView{
        VStack{
            
            Text("Catégories")
                .font(.largeTitle)
            HStack{
            OneSuiviBienEtreView(img: "fond1", titre: "Peau")
                OneSuiviBienEtreView(img: "fond1", titre: "Articulations")
        }
            HStack{
                OneSuiviBienEtreView(img: "fond1", titre: "Fatigue")
                    OneSuiviBienEtreView(img: "fond1", titre: "Foie")
            }
            HStack{
                OneSuiviBienEtreView(img: "fond1", titre: "Digestion")
                    OneSuiviBienEtreView(img: "fond1", titre: "Sommeil")
            }
            HStack{
                OneSuiviBienEtreView(img: "fond1", titre: "Moral")
                    OneSuiviBienEtreView(img: "fond1", titre: "")
            }
            HStack{
                OneSuiviBienEtreView(img: "fond1", titre: "")
                    OneSuiviBienEtreView(img: "fond1", titre: "")
            }
        }
    }
    }
}

struct SuiviBienEtre2_Previews: PreviewProvider {
    static var previews: some View {
        SuiviBienEtre2()
    }
}
