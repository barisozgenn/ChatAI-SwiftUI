//
//  MessageBubble.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 26.04.2023.
//

import SwiftUI

struct MessageBubble: Shape {
    var isFromCurrentUser: Bool
    var radius: CGFloat = 20

    func path(in rect: CGRect) -> Path {
        let path = Path { p in
            let topLeft = CGPoint(x: rect.minX, y: rect.minY)
            let topRight = CGPoint(x: rect.maxX, y: rect.minY)
            let bottomRight = CGPoint(x: rect.maxX, y: rect.maxY)
            let bottomLeft = CGPoint(x: rect.minX, y: rect.maxY)
            let centerLeft = CGPoint(x: rect.minX, y: rect.midY)
            let centerRight = CGPoint(x: rect.maxX, y: rect.midY)
            let centerTop = CGPoint(x: rect.midX, y: rect.minY)
            let centerBottom = CGPoint(x: rect.midX, y: rect.maxY)

            if isFromCurrentUser {
                p.move(to: centerRight)
                p.addArc(tangent1End: bottomRight, tangent2End: centerBottom, radius: radius)
                p.addArc(tangent1End: centerBottom, tangent2End: bottomLeft, radius: radius)
                p.addArc(tangent1End: bottomLeft, tangent2End: centerLeft, radius: radius)
                p.addArc(tangent1End: centerLeft, tangent2End: topLeft, radius: radius)
                p.addArc(tangent1End: topLeft, tangent2End: centerTop, radius: radius)
                p.addArc(tangent1End: centerTop, tangent2End: topRight, radius: radius)
                p.addArc(tangent1End: topRight, tangent2End: centerRight, radius: radius)
                p.addArc(tangent1End: centerRight, tangent2End: bottomRight, radius: radius)
            } else {
                p.move(to: centerLeft)
                p.addArc(tangent1End: bottomLeft, tangent2End: centerBottom, radius: radius)
                p.addArc(tangent1End: centerBottom, tangent2End: bottomRight, radius: radius)
                p.addArc(tangent1End: bottomRight, tangent2End: centerRight, radius: radius)
                p.addArc(tangent1End: centerRight, tangent2End: topRight, radius: radius)
                p.addArc(tangent1End: topRight, tangent2End: centerTop, radius: radius)
                p.addArc(tangent1End: centerTop, tangent2End: topLeft, radius: radius)
                p.addArc(tangent1End: topLeft, tangent2End: centerLeft, radius: radius)
                p.addArc(tangent1End: centerLeft, tangent2End: bottomLeft, radius: radius)
            }
        }
        return path
    }
}
