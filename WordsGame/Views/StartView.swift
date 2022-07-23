//
//  ContentView.swift
//  WordsGame
//
//  Created by 🌚🌚 Царь🌚🌚 on 03.07.2022.
//

import SwiftUI

struct StartView: View {
    @State var bigWord = ""
    @State var firstNamePlayer = ""
    @State var secondNamePlayer = ""
    
    @State var isShowGame = false
    
    var body: some View {

        VStack {
            TitleText(text: "Words Game")
            
            WordsTextField(word: $bigWord, placeholder: "Введите слово")
                .padding()
                .padding(.top, 32)
            
            WordsTextField(word: $firstNamePlayer, placeholder: "Имя 1 игрока")
                .padding(.horizontal, 16)
                .padding(.top, 16)
            
            WordsTextField(word: $secondNamePlayer, placeholder: "Имя 2 игрока")
                .padding(.horizontal, 16)
                .padding(.top, 10)
            
            Button {
                isShowGame.toggle()
            } label: {
                Text("Старт!")
                    .font(.custom("AvenirNext-Bold", size: 42))
                    .padding(.horizontal, 50)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(18)
            }
        }.background(Image("bg"))
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $isShowGame) {
                GameView()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
