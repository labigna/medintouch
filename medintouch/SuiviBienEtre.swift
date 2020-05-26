//
//  SuiviBienEtre.swift
//  medintouch
//
//  Created by philippe moniez on 19/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

/* www.passeportsante.net/fr/communaute/reponsesexpert/index.aspx */

struct SuiviBienEtre: View {
    
    private var titre1: String
    private var question1: String
    private var question2: String
    private var question3: String
    private var question4: String
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    
    init(choix: Int){
        
        switch choix {
            
        case 1:        // peau
            self.titre1 = "Problèmes de peau"
            self.question1 = "Avez-vous la peau grasse?"
            self.question2 = "Problème d'acné?"
            self.question3 = "Psoriasis"
            self.question4 = "Coups de soleil"
            
        case 2:       // articulations
            self.titre1 = "Soucis d'articulations"
            self.question1 = "Douleurs aux genoux"
            self.question2 = "Douleurs aux épaules"
            self.question3 = "Douleurs aux mains"
            self.question4 = "Douleurs matinales"
            
        case 3:       // fatigue
            self.titre1 = "Etes-vous fatigué(e)?"
            self.question1 = "Fatigué(e) au réveil?"
            self.question2 = "Efforts physiques difficiles?"
            self.question3 = "Manque de peps?"
            self.question4 = "Difficulté de concentration?"
            
        case 4:       // foie
            self.titre1 = "Comment va votre foie?"
            self.question1 = "Manquez-vous d'énergie?"
            self.question2 = "Avez-vous la peau qui gratte?"
            self.question3 = "Avez-vous des trous de mémoire?"
            self.question4 = "Perte de poids rapide?"
            
        case 5:      // digestion
            self.titre1 = "Votre digestion?"
            self.question1 = "Brûlures d'estomac?"
            self.question2 = "Avez-vous des nausées?"
            self.question3 = "Ballonnements?"
            self.question4 = "Troubles du transit?"
            
        case 6:       /* sommeil reseau-morphee.fr/wp-content/uploads/dlm_uploads/2016/04/questionnairesommeilJANV2017.pdf */
            self.titre1 = "Comment dormez-vous?"
            self.question1 = "Difficultés à vous endormir le soir?"
            self.question2 = "Réveils dans la nuit?"
            self.question3 = "Horaires de sommeils décalés?"
            self.question4 = "Ronflements?"
            
        case 7:       /* moral
            www.havea.com/conseils-sante/les-facteurs-de-troubles-de-l-humeur-et-baisses-de-moral*/
            self.titre1 = "Votre moral?"
            self.question1 = "Troubles du sommeil?"
            self.question2 = "Avez-vous une activité physique?"
            self.question3 = "Difficultés relationnelles?"
            self.question4 = "Soucis psychologiques?"
            
        case 8:       // soucis endocriniens
            /* www.irdes.fr/recherche/enquetes/esps-enquete-sur-la-sante-et-la-protection-sociale/questionnaires/2004/sante-soins-medicaux.pdf */
            self.titre1 = "Soucis endocriniens?"
            self.question1 = "Thyroïde"
            self.question2 = "Diabète"
            self.question3 = "Cholestérol"
            self.question4 = "Triglycérides"
            
        case 9:       // soucis urinaires
            /* www.irdes.fr/recherche/enquetes/esps-enquete-sur-la-sante-et-la-protection-sociale/questionnaires/2004/sante-soins-medicaux.pdf */
            self.titre1 = "Soucis urinaires"
            self.question1 = "Cystite"
            self.question2 = "troubles des règles"
            self.question3 = "Ménopause"
            self.question4 = "Prostate"
            
        case 10:    //Problèmes de cheveux
        /* www.topsante.com/Landing-Pages/problemes-de-cheveux-tout-savoir */
            self.titre1 = "Problèmes de cheveux"
            self.question1 = "Pointes fourchues"
            self.question2 = "Pellicules"
            self.question3 = "Chutes de cheveux"
            self.question4 = "Cheveux secs"
            
            
        default:
            self.titre1 = "default"
            self.question1 = ""
            self.question2 = ""
            self.question3 = ""
            self.question4 = ""
            
        }
    }
    
    
    var body: some View {
        ZStack{
            Image("fond1").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView{
                    
                    HStack{
                        Spacer()
                        ZStack{
                            Circle()
                                .frame(width: 30.0, height: 30.0)
                                .foregroundColor(.white)
                                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 5, y: 5)
                            Button(action: {},
                                   label:
                                {Text("< ").foregroundColor(.gray)
                            }
                            )
                        }
                        Spacer()
                        Text("Questionnaire").font(.title).bold()
                        Spacer()
                        
                    }
                        .padding(.top, 50.0)
                    
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 310.0, height:400)
                                .foregroundColor(Color(UIColor.systemGray6))
                                .shadow(color: .white, radius: 7, x: -5, y: -5)
                                .shadow(color: .gray, radius: 7, x: 5, y: 5)
                                .padding(.vertical, 15.0)
                                
                                .overlay(
                                    
                                    VStack{             // liste de questions
                                        Text(titre1
                                        ).padding(.top, 10.0).padding(.bottom, 10.0).font(.system(size: 26))
                                        
                                        HStack{
                                            Text(question1).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected1, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }.padding(.bottom, 10.0)
                                        HStack{
                                            Text(question2).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected2, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                        }
                                        .padding(.bottom, 10.0)
                                        HStack{
                                            Text(question3).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected3, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                            }.padding(.bottom, 10.0)
                                        HStack{
                                            Text(question4).padding(.leading)
                                            Toggle(isOn:
                                                $isSelected4, label:
                                                {
                                                    EmptyView()
                                            }).padding(.trailing)
                                            }.padding(.bottom, 10.0)
                                            }
                                    .padding(.top, -66.0)
                                    
                            )
                        }
                        // Bouton Valider
                        NavigationLink(destination: ProfilView()){
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 40)
                                        .frame(width: 310.0, height:50)
                                        .foregroundColor(Color(UIColor.systemGray6))
                                        .shadow(color: .white, radius: 7, x: -5, y: -5)
                                        .shadow(color: .gray, radius: 7, x: 5, y: 5)
                                        .padding(.vertical, 15.0)
                                    
                                    Text("Valider").font(.system(size: 26))
                                }
                        }
                    }
                }
            }
            
        }
    }
}



struct SuiviBienEtre_Previews: PreviewProvider {
    static var previews: some View {
        SuiviBienEtre(choix: 1)
    }
}
