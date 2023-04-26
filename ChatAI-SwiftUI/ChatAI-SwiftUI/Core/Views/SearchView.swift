//
//  SearchView.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State private var isTyped = false
    
    var body: some View {
        ZStack(alignment: .leading){
            ZStack{}
                .frame(maxWidth: .infinity, maxHeight: 55)
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(.blue, lineWidth: 1)
                )
                .padding(.horizontal, -14)

            HStack{
                TextField("", text: $searchText)
                    .onChange(of: searchText) { newValue in
                        withAnimation(.spring()){
                            isTyped = newValue.isEmpty ? false : true
                        }
                    }
                ZStack{
                    Image(systemName: "mic.fill")
                }
                .frame(width: 50,height: 50)
                .background(.blue)
                .cornerRadius(14)
                .foregroundColor(.white)
                .padding(.trailing, -14)
            }
            Text("Chat with me")
                .frame(height: 20, alignment: .leading)
                .padding(.horizontal, 7)
                .background(.white)
                .font(Font.system(size: isTyped ? 13 : 16))
                .padding(.top, isTyped ? -36 : 0)
                .padding(.leading, 1)

        }
        .frame(height: 50, alignment: .leading)
        .foregroundColor(.blue)
        .padding(.horizontal, 14)
        .padding(.horizontal, 14)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
