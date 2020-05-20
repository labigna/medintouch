//
//  ChoiceView.swift
//  medintouch
//
//  Created by philippe moniez on 20/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ChoiceView: View {
    
    /*
     1 = peau
     2 = articulations
     3 = fatigue
     4 = foie
     5 = digestion
     6 = sommeil
     7 = moral
     8 = 
     9 =
     10 =
    
    */
    private var question1: String
    private var question2: String
    private var question3: String
    private var question4: String
    
    init(choix: Int){
        
        switch choix {
            
        case 1:
            self.question1 = "Avez-vous la peau grasse?"
            self.question2 = "Problème d'acné?"
            self.question3 = "Psoriasis"
            self.question4 = "Coups de soleil"
            
        case 2:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 3:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 4:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 5:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 6:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 7:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 8:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 9:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        case 10:
            self.question1 = "5"
            self.question2 = "6"
            self.question3 = "7"
            self.question4 = "8"
            
        default:
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
            Text("Questionnaire")
                .font(.largeTitle)
            
            Spacer()
            
            Text(question1)
            Text(question2)
            Text(question3)
            Text(question4)
    }
}
}
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView(choix: 1)
    }
}
