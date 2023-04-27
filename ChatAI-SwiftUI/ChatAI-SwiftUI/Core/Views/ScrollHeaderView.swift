//
//  ScrollHeaderView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 27.04.2023.
//

import SwiftUI

struct ScrollHeaderView: View {
    @State private var offsetXFirst = -192.0;
    @State private var opacityFirst = 0.0;
    @State private var offsetXSecond = -192.0;
    @State private var opacitySecond = 0.0;
    @State private var offsetXThird = -192.0;
    @State private var opacityThird = 0.0;
    @State private var offsetXFourth = -192.0;
    @State private var opacityFourtht = 0.0;
    var body: some View {
        VStack(alignment: .leading){
            firstHeaderBubble
            sloganTextView
            secondHeaderBubble
            thirdHeaderBubble
        }
        .onAppear{
            withAnimation(.spring().delay(0.29)){
                opacityFirst = 1
                offsetXFirst = 0
            }
            withAnimation(.spring().delay(0.58)){
                opacitySecond = 1
                offsetXSecond = 0
            }
            withAnimation(.spring().delay(0.92)){
                opacityThird = 1
                offsetXThird = 0
            }
            withAnimation(.spring().delay(1.29)){
                opacityFourtht = 1
                offsetXFourth = 0
            }
        }
    }
}

extension ScrollHeaderView {
    
    var firstHeaderBubble: some View{
        MessageBubble(direction: .left) {
            VStack(alignment: .leading){
                Text("What can I do for you today?")
                    .font(.subheadline)
                Text("Your Personal AI Assistant")
                    .font(.title2)
                    .fontWeight(.medium)
            }
                          
                                .padding(.all, 20)
                                .padding(.horizontal)
                                .foregroundColor(Color.black)
                                .background(Color(.systemGray5))
                                
                        }
        .opacity(opacityFirst)
        .offset(x: offsetXFirst)
        
    }
    var secondHeaderBubble: some View{
        MessageBubble(direction: .left) {
            VStack(alignment: .leading, spacing: 7){
                Text("ChatGPT Text")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("Unlock your potential with ChatGPT: The smarter way to stay organized and informed.")
                    .font(.caption2)
            }
                          
                                .padding(.all, 20)
                                .padding(.horizontal)
                                .foregroundColor(Color.black)
                                .background(Color(.systemTeal))
                                
        }.frame(width: 330)
            .opacity(opacityThird)
            .offset(x: offsetXThird)
    }
    var thirdHeaderBubble: some View{
        MessageBubble(direction: .left) {
            VStack(alignment: .leading, spacing: 7){
                Text("Dall-E Image")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("Unleash your creavity with Dall-E's personal assistant: Inspire and create effortlessly.")
                    .font(.caption2)
            }
                          
                                .padding(.all, 20)
                                .padding(.horizontal)
                                .foregroundColor(Color.black)
                                .background(Color(.systemTeal))
                                
        }.frame(width: 330)
            .opacity(opacityFourtht)
            .offset(x: offsetXFourth)
    }
    var sloganTextView: some View{
        Text("Discover your possibilities with my features!")
            .font(.subheadline)
            .padding(.vertical)
            .fontWeight(.semibold)
            .padding(.leading, 7)
            .opacity(opacitySecond)
            .offset(x: offsetXSecond)
    }
}
struct ScrollHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollHeaderView()
    }
}
