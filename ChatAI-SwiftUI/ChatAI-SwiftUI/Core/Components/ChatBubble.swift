//
//  ChatBubble.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 27.04.2023.
//

import SwiftUI

struct ChatBubble: View {
    @State var title : String = "BarisOzgen"
    @State var message: String = "Message will be shown here"
    var body: some View {
        VStack{
            MessageBubble(direction: .right) {
                VStack(alignment: .leading){
                    Text(title)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(message)
                        .font(.headline)
                        .fontWeight(.regular)
                }
                              
                                    .padding(.all, 20)
                                    .padding(.horizontal)
                                    .foregroundColor(Color.black)
                                    .background(Color(.systemGray5))
                                    
                            }
        }
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble()
    }
}
