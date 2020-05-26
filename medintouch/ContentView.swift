//
//  ContentView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var identified : Bool = false
    var body: some View {
        TabView {
            actual()
                .tabItem {
                    Image(systemName: "leaf.arrow.circlepath")
                    Text("Actualités")
            }
            categorie()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Recherche")
            }
            ShowMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Carte")
            }
            ProfilView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
            }
        }
        .font(.headline)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
