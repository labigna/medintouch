//
//  Praticien.swift
//  MAP MEDINTOUCH
//
//  Created by Labigna Traoré on 22/05/2020.
//  Copyright © 2020 guims cordelia. All rights reserved.
//

import Foundation

struct Praticien {
   // var icon = UIImage(named: "icons8-home-address")
    var name: String
    var adresse: String
    var specialisT: String
    var horaires: String
    var isOpen: Bool
    var type: PraticienType
    
    //var latitude: Double
   // var longitude: Double
  //  var loc : PointAnnotationss
    
   enum PraticienType{
          case Herboristerie, Parapharmacie, Praticien, Specialiste
    }
}
