//
//  UIColor+Color.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 28.04.2023.
//

import Foundation
import UIKit
import SwiftUI
extension UIColor{
    static let theme = ColorTheme()
    struct ColorTheme{
        let firstListItemColor = UIColor(named: "firstListItemColor")
        let secondListItemColor = UIColor(named: "secondListItemColor")
        let thirdListItemColor = UIColor(named: "thirdListItemColor")

    }
}
extension Color{
    static let theme = ColorTheme()
    struct ColorTheme{
        let firstListItemColor = Color("firstListItemColor")
        let secondListItemColor = Color("secondListItemColor")
        let thirdListItemColor = Color("thirdListItemColor")

    }
}


/**
 class Pallete {
   static const Color mainFontColor = Color.fromRGBO(70, 70, 92, 1);
   static const Color firstListItemColor = Color.fromRGBO(173, 216, 230, 1);
   static const Color secondListItemColor = Color.fromRGBO(167, 199, 231, 1);
   static const Color thirdListItemColor = Color.fromRGBO(182, 208, 226, 1);
   static const Color firstAssistantCircleColor = Color.fromRGBO(115, 147, 179, 1);
   static const Color secondAssistantCircleColor = Color.fromRGBO(65, 161, 254, 1);
   static const Color borderColor = Color.fromRGBO(207, 207, 207, 1);
   static const Color blackColor = Colors.black;
   static const Color whiteColor = Colors.white;
 }
 
 */
