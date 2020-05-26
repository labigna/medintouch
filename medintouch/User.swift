//
//  User.swift
//  medintouch
//
//  Created by Labigna Traoré on 26/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import Foundation

class User: ObservableObject{
    @Published private(set) var identified = false
    
    func toggle(){
        self.identified.toggle()
    }
    
    func getIdentification() -> Bool{
        return identified
    }
    
}
