//
//  LoginView.swift
//  sidentifier
//
//  Created by abouhadji on 20/05/2020.
//  Copyright © 2020 abouhadji. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            // fond
            Image("okok")
            
            HStack{
                VStack{
//                    Text("Bienvenue sur")
//                        .font(.title)
//                        .fontWeight(.ultraLight)
//
//                    Image("medmed")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .padding([.top, .leading], -29.0)
//                        .frame(width: 90.0, height: 50.0)
                    
                    //                    photo arbre
                    Image("arbre").resizable().aspectRatio(contentMode: .fill)
                        .frame(width: 170.0, height: 160.0).mask(RoundedRectangle(cornerRadius: 20)).shadow(color: Color.black.opacity(0.3), radius: 10, x: 10, y: 10).padding(.top, -13.0)
                    
                    //                    sidentifier/creer profil
                    Text("S'identifier").font(.title).bold()
                        .padding(15.0)
                    HStack{
                        Text("Vous êtes un nouvel utilisateur?")
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                        
                        
                        Button(action: {
                        }) {
                            Text("Créer un profil")
                        }
                        // conexion/passes
                    }
                    Image("fond1")
                        .resizable()
                        .mask(Circle())
                        .frame(width: 290.0, height: 40.0)
                        
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 5)
                                .blur(radius: 3)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                        
                        .overlay(HStack{Text("Adresse mail …")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .padding()
                            Spacer()
                        })
                    
                    Image("fond1")
                        .resizable()
                        .mask(Circle())
                        .frame(width: 290.0, height: 40.0)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                        
                        .overlay(HStack{Text("Mot de passe…")
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .padding()
                            Spacer()
                            
                        })
                    HStack{
                        Spacer()
                        Button(action: {
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                
                                .fill(Color.greenBG)
                                .shadow(color: Color.gray, radius: 4, x: 5, y: 4)
                                
                                .shadow(color: Color.white.opacity(0.50),
                                        radius: 4, x: -5, y: -5)
                                
                                .overlay(HStack{Text("Connexion")
                                    
                                    .fontWeight(.light)
                                    .foregroundColor(Color.black)
                                    
                                })
                                .frame(width:140, height: 40)
                                .padding()
                        }}
                    //
                    
                    
                    
                    VStack{
                        Divider()
                        Text("ou")
                        Divider()
                        
                        //                        bouton google
                        Image("googlefond")
                            .resizable()
                            .mask(Rectangle())
                            .frame(width: 290.0, height: 50.0)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .blur(radius: 13)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                            
                            .overlay(HStack{Text("Continuer avec Google")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                                .padding()
                                Spacer()
                                Image("goog")
                                    .resizable()
                                    .padding()
                                    .aspectRatio(contentMode: .fit)
                                    .mask(Circle())
                                }
                        )
                        //                        bouoton facebook
                        Image("faceface")
                            .resizable()
                            
                            .mask(Rectangle())
                            
                            .frame(width: 290.0, height: 50.0)
                            
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .bottomTrailing, endPoint:.topLeading)))
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .blur(radius: 3)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                            
                            .overlay(HStack{Text("Continuer avec Facebook")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .padding()
                                Spacer()
                                Image("pakpak")
                                    .resizable()
                                    .padding(11.0)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal, 4.0)
                                    .mask(Circle())
                                //                                        .padding()
                                }
                        )
                        //                        bouton apple
                        Image("applegris")
                            
                            .resizable()
                            .mask(Rectangle())
                            .frame(width: 290.0, height: 50.0)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .bottomTrailing, endPoint:.topLeading)))
                            
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topLeading, endPoint:.bottomTrailing))))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    
                                    .blur(radius: 3)
                                    .offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient( gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading))))
                            .overlay(HStack{Text("Continuer avec Apple")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .padding()
                                Spacer()
                                Image("apple")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding([.bottom, .trailing], 4.0)
                                    .mask(Circle())
                                }
                        )
                        
                    }
                }.frame(width: 400)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

