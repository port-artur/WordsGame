//
//  GameView.swift
//  WordsGame
//
//  Created by 🌚🌚 Царь🌚🌚 on 03.07.2022.
//

import SwiftUI

struct GameView: View {
    
    @State var word = ""
    
    var body: some View {
        VStack(spacing: 16 ){
            HStack {
                Button {
                    print("Quit")
                } label: {
                    Text("Выход")
                        .font(.custom("AvenirNext-Bold", size: 20))
                        .foregroundColor(.white)
                        .padding(8)
                        .padding(.horizontal, 16)
                        .background(Color.pink)
                        .cornerRadius(15)
                }
                Spacer()
            }
            
            Text("Магнитотерапия")
                .font(.custom("AvenirNext-Bold", size: 42))
                .foregroundColor(.white)
            
            HStack(spacing: 12){
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("Вася")
                        .font(.custom("AvenirNext-Bold", size: 25))
                        .foregroundColor(.white)
                }.padding(20)
                    .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                    .background(Color.pink)
                    .cornerRadius(20)
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("Петя")
                        .font(.custom("AvenirNext-Bold", size: 25))
                        .foregroundColor(.white)
                }.padding(20)
                    .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                    .background(Color("SecondPlayer"))
                    .cornerRadius(20)
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                
            }
            
            WordsTextField(word: $word, placeholder: "Введите слово")
                .padding(.horizontal, 12)
            
            
            Button {
                print("Ready")
                self.word = ""
            } label: {
                Text("Готово")
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .font(.custom("AvenirNext-Bold", size: 50))
                    .background(Color.pink)
                    .cornerRadius(15)
                    .padding(.horizontal, 12)
                    
                    
            }
            .padding(.top, 10)

            List {
                
            }.listStyle(.plain)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.background(Image("bg"))
         
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
