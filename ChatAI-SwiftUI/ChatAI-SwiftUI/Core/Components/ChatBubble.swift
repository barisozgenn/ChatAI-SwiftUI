//
//  ChatBubble.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 27.04.2023.
//

import SwiftUI

struct ChatBubble: View {
    
    @State var isAI : Bool = false
    @State var message: String = "Baris Message will be shown here"
    @State var imageUrl: String = ""
    var body: some View {
        HStack(spacing: 0){
            if(!isAI){
                paddingBalloon
            }
            
            MessageBubble(direction: isAI ? .left : .right) {
                VStack(alignment: .leading){
                    Text(isAI ? "AI" : "You")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(message)
                        .font(.headline)
                        .fontWeight(.regular)
                    if !imageUrl.isEmpty{
                        
                        Image("aiAssistant")
                            .resizable()
                            .scaledToFit()
                    }
                }
                
                .padding(.all, 20)
                .padding(.horizontal)
                .foregroundColor(isAI ? .black : .white)
                .background(isAI ? Color(.systemGray5) : .blue)
                
            }
            
            if(isAI){
                paddingBalloon
            }
        }
    }
}
extension ChatBubble {
    var paddingBalloon: some View {
        HStack{}
            .frame(width: 29, height: 14)
            .padding(0)
    }
}
struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble()
    }
}
