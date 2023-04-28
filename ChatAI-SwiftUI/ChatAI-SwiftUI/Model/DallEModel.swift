//
//  DallEModel.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 28.04.2023.
//

import Foundation
struct DallEModel: Codable {
    let created: Int
    let data: [ImageURL]
}

struct ImageURL: Codable {
    let url: String
}
