//
//  ProfilM.swift
//  medintouch
//
//  Created by Labigna Traoré on 11/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import Foundation

struct ProfilM{
    var nom : String
    var age : Int
    var poids : Int
    var taille : Int
    var objectifs : [String]
    var contreInd : [String]
    var traitements : [String]
}

struct Suivi{
    var donnees : [Double]
    var titleSuivi : String
}
