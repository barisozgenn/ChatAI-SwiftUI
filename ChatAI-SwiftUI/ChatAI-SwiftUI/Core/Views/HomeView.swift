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
                ScrollView {
                    
                }
                SearchView()
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
