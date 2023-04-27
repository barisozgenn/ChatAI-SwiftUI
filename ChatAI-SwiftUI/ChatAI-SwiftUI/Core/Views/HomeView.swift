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
                    VStack(alignment: .leading){
                        firstHeaderBubble
                        Text("Discover your possibilities with my features!")
                            .font(.subheadline)
                            .padding(.vertical)
                            .fontWeight(.semibold)
                            .padding(.leading, 7)
                        
                    

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
