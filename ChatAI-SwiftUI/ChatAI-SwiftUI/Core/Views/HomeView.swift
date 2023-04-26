//
//  HomeView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            backgroundView
            VStack{
                HeaderView()
                ScrollView{
                    VStack{
                        firstHeaderBubble
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 200, height: 100)

                            MessageBubble(isFromCurrentUser: true, radius: 10)
                                .fill(Color.blue)
                                .frame(width: 200, height: 100)
                        }

                    }
                    .padding()
                }
                SearchView()
                    .padding(.bottom,14)
            }
        }
    }
}

extension HomeView {
    var firstHeaderBubble: some View{
        HStack{
            VStack(alignment: .leading){
                Text("What can I do for you today?")
                    .font(.subheadline)
                Text("Your Personal AI Assistant")
                    .font(.title2)
                    .fontWeight(.medium)
            }
            .padding(14)
            .padding(.horizontal)
            //.background(.orange)
            .cornerRadius(4)
            .cornerRadius(0, corners: [.bottomLeft])
            .cornerRadius(29, corners: [.topLeft])
            Spacer()
        }
        
    }
    var backgroundView: some View{
        ZStack{
            Image("bakcgroundSeamless")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .bottom)
        }
        .opacity(0.58)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
