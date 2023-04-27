//
//  HeaderView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct HeaderView: View {
    @State private var offsetY = -72.0;
    @State private var opacity = 0.0;
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
        .opacity(opacity)
        .offset(y: offsetY)
        .onAppear{
            withAnimation(.spring()){
                opacity = 1
                offsetY = 0
            }
        }
    }
        
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
