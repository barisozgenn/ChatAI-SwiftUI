//
//  OpenAIAPI.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 28.04.2023.
//

import Foundation
import Combine

class OpenAIAPI {
    private let chatGTPEndpoint = "https://api.openai.com/v1/chat/completions"
    private let dallEEndpoint = "https://api.openai.com/v1/images/generations"
    
    private let token = "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"
    
    func chatGPT(prompt: String) -> AnyPublisher<String, Error> {
        let parameters = [
            "model": "gpt-3.5-turbo",
            "messages": prompt]
        let jsonData = try? JSONSerialization.data(withJSONObject: parameters)
        let url = URL(string: chatGTPEndpoint)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse,
                      200..<300 ~= httpResponse.statusCode else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: ChatGPTModel.self, decoder: JSONDecoder())
            .map { $0.choices[0].message.content }
            .eraseToAnyPublisher()
    }
    
    func dallE(prompt: String) -> AnyPublisher<String, Error> {
        let parameters = [
            "promp": prompt,
            "n": 1] as [String : Any]
        let jsonData = try? JSONSerialization.data(withJSONObject: parameters)
        let url = URL(string: dallEEndpoint)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse,
                      200..<300 ~= httpResponse.statusCode else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: DallEModel.self, decoder: JSONDecoder())
            .map { $0.data[0].url }
            .eraseToAnyPublisher()
    }
    
    func isImagePrompt(prompt: String) -> Bool {
        if prompt.contains("picture") ||
            prompt.contains("photo") ||
            prompt.contains("image") ||
            prompt.contains("art") {return true}else{return false}
    }
}
