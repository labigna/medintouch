//
//  ContentView.swift
//  medintouch
//
//  Created by Labigna Traoré on 07/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
        @State private var compteur = 0
        
        var body: some View {
            Text("\(compteur)")
                .font(.system(size:90))
                .fontWeight(.bold)
                .onTapGesture {
                    self.compteur += 1
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
