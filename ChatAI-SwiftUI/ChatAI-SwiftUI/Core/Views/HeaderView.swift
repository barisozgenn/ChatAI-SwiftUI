//
//  HeaderView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            ZStack{
                Circle().fill(.blue)
                    .frame(height: 44)
                Image("aiAssistant")
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
            Text("Your AI Assistant")
                .padding(.leading, -55)
                .font(.title2)
            Spacer()
        }
        .padding(.horizontal,14)
        .frame(height: 55)
        .background(.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
