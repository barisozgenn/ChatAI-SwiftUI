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
        
        if !isAI{autoAIResponse()}
    }
    
    func autoAIResponse() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            let aiResponse = AIAnswerModel.allCases.randomElement()!.message
            self?.messages.append(ChatModel(id: UUID().uuidString, isAI: true, message: aiResponse))
        }
        
   }
}
