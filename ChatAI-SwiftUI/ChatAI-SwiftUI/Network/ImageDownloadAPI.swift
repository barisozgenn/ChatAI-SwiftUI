//
//  ImageDownloadAPI.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 28.04.2023.
//

import Foundation
import SwiftUI
import Combine

class ImageDownloadAPI {
    func downloadImage(from url: URL) -> AnyPublisher<UIImage?, Never> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { data, response in UIImage(data: data) }
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
}
