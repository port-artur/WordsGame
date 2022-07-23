//
//  TitleText.swift
//  WordsGame
//
//  Created by 🌚🌚 Царь🌚🌚 on 03.07.2022.
//

import SwiftUI
struct TitleText: View {
    @State var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.custom("AvenirNext-Bold", size: 42))
            .foregroundColor(.white)
    }
}

//struct TitleText_Previews: PreviewProvider {
//    static var previews: some View {
//        TitleText(text: "Магнит")
//    }
//}
