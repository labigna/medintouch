//
//  File.swift
//  MAP MEDINTOUCH
//
//  Created by guims cordelia on 21/05/2020.
//  Copyright © 2020 guims cordelia. All rights reserved.
//

import MapKit
import Foundation
import SwiftUI
import UIKit


// creation des points de localisation

class PointAnnotation : NSObject, MKAnnotation, Identifiable{
    
    var markerTintColor: UIColor  {
              switch type {
              case "Specialiste":
                  return .blue
               case "":
                   return .purple
              case "Praticien":
                  return .yellow
              case "Pharmacie":
                  return .green
               case "Herboriste":
                  return .red
              default:
                  return .orange
              }
          }
    
     let name : String
    let title: String?
    let specialisT: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let type: String
      //var prati : Praticien
    
    init(
        Nom: String,
         Adresse: String,
         Specialitée : String,
         Horaire: String,
         Localisation: CLLocationCoordinate2D,
         Type: String)
    {
        
        self.name = Nom
        self.title = Nom
        self.specialisT = Specialitée
        self.subtitle = Horaire
        self.coordinate = Localisation
        self.type = Type
    }

      static func requestMockData()-> [PointAnnotation]{
    return [
        PointAnnotation(Nom: "Pierre Amatore", Adresse: "Marseille", Specialitée: "Shiatsu",Horaire:"9H/18H", Localisation:.init(latitude: 43.291509, longitude: 5.380631), Type: "Praticien"),

        PointAnnotation(Nom: "Herboriste Du Père Blaise ", Adresse: "4-6 Rue Meolan\ndu PèreBlaize\n13001 Marseille", Specialitée: "Herboristerie, Parapharmacie",Horaire:"9H/18H", Localisation: .init(latitude: 43.295389, longitude: 5.37849), Type: "Pharmacie"),
               
        PointAnnotation(Nom: " Yannick Torrel ", Adresse: "12 Place de gaulle\n13001 Marseille",Specialitée: "Homéopathe", Horaire:"9H/18H", Localisation: .init(latitude: 43.29502868652344, longitude: 5.376115798950195), Type: "Specialiste")
            ]
}
}
  /*
        
    
   var JCDosseto  = Praticien(name: "Naturopathe Marseille - Jean-Claude DOSSETO", adresse: "Marseille", horaires: "9H/18H",isOpen: true, type:.Praticien, loc: PointAnnotation(info: "Praticien en médecine holistique", title: "Naturopathe Marseille - Jean-Claude DOSSETO", subtitle: "9H/18H", latitude: 43.269875, longitude: 5.3699525))
                              
                             */
  
     



