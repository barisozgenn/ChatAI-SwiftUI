//
//  HomeViewModel.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 27.04.2023.
//

import Foundation
class HomeViewModel: ObservableObject {
    @Published var messages: [ChatModel] = []
    
    func addMessage(isAI: Bool, message: String){
        messages.append(ChatModel(id: UUID().uuidString, isAI: isAI, message: message))
    }
    
}
