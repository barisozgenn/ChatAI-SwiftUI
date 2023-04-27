//
//  HomeView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    var body: some View {
        ZStack{
            backgroundView
            VStack{
                HeaderView()
               
                    ScrollView{
                        ScrollViewReader { proxy in
                        VStack(alignment: .leading){
                            ScrollHeaderView()
                            ForEach($vm.messages, id: \.id) { message in
                                
                                ChatBubble(isAI: message.isAI, message:message.message)
                                    .id(message.id)
                            }
                        }
                        .padding()

                        .onChange(of: vm.messages.count) { _ in
                            withAnimation(.spring()){
                                proxy.scrollTo(vm.messages.last?.id, anchor: .bottom)
                            }
                        
                    }
                    
                   }
                }
                
                SearchView()
                    .environmentObject(vm)
                    .padding(.bottom,14)
            }
        }
    }
}

extension HomeView {
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
