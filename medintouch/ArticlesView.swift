//
//  ArticlesView.swift
//  medintouch
//
//  Created by philippe moniez on 12/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct ArticlesView: View {
    var body: some View {
        ZStack{
            Image("fond1").resizable().edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    // Bouton Back
              
                    Spacer()
                    
                    Text("Articles").bold().font(.system(size: 30))
                    //Spacer()
                }.padding(.trailing, 36.0).padding(.bottom, 50.0)
                
                Image("romarin").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 130).mask(RoundedRectangle(cornerRadius: 20)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10).padding(.top, -13.0)
                
                // Titres
                Text("Le romarin:")
                    .bold()
                    .font(.title).padding(.vertical, 8.0)
                Text("Les différents bienfaits du bourgeon de romarin:")
                    .bold()
                    .font(.system(size:16))
                
                // Cadre et texte
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("fondColor1"))
                    .frame(width: 320.0, height: 370.0)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing)
                                )
                        )
                )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 10)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading)
                                )
                        )
                            .overlay(
                                VStack{
                                    ScrollView{
                                        Text("Hépatite, cirrhose :").foregroundColor(.black).fontWeight(.regular)
                                            .padding(.bottom, -12.0).padding(.top)
                                        Text("Le macérat de jeunes pousses de romarin est sans conteste la plante du foie. En plus de régénérer le foie et le détoxifier, il participe à sa protection et agit ainsi sur l'ensemble de l'organisme.\n C'est également un anti-oxydant qui lutte contre la formation des radicaux libres et protège ainsi différents organes ou tissus.").fontWeight(.light)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                        Text("Fatigue, déprime :").foregroundColor(.black).fontWeight(.regular)
                                            .padding(.bottom, -12.0)
                                        Text("L'action détoxifiante du macérat de jeunes pousses de romarin est également visible sur le système nerveux.\n Il va agir en améliorant la mémoire, diminuant la fatigue et en apportant du bien-être.").fontWeight(.light)
                                            .foregroundColor(.black).multilineTextAlignment(.center).padding()
                                        Text("Dérèglements de la thyroïde :").foregroundColor(.black)
                                            .padding(.bottom, -12.0)
                                        Text("le macérat de jeunes pousses de romarin influence l'ensemble du corps en agissant sur le foie. \nIl permet de gérer notamment les dérèglements de certaines glandes comme la thyroïde par exemple.").fontWeight(.light)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
                                }
                        )
                )
            }
            .padding(.bottom, 100)
        }
    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
