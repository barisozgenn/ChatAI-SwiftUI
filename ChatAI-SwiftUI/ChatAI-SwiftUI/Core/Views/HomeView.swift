//
//  HomeView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HeaderView()
            ScrollView {
                
            }
            SearchView()
                .padding(.bottom,14)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
