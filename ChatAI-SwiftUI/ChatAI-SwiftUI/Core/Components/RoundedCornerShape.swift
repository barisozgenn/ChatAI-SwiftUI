//
//  RoundedCornerShape.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct RoundedCornerShape: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        path.lineWidth = 2
        path.stroke(with: .darken, alpha: 100)
        
        return Path(path.cgPath)
    }
}
