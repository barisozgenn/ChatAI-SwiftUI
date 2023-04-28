//
//  AIAnswerModel.swift
//  ChatAI-SwiftUI
//
//  Created by Baris OZGEN on 28.04.2023.
//

import Foundation

enum AIAnswerModel: String, CaseIterable, Identifiable, Codable {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    
    var id : String { return rawValue}
    
    var message : String {
        switch self {
        case .a:
            return "Let me think for you."
        case .b:
            return "Let me research that for you."
        case .c:
            return "I'll look into it and get back to you."
        case .d:
            return "Let me double-check and confirm that information."
        case .e:
            return "Give me a moment to gather my thoughts."
        case .f:
            return "Let me consult my notes/resources and see if I can help."
        case .g:
            return "Let me see if I can find a solution for you."
        case .h:
            return "Let's review the facts and see if we can determine the answer."
        case .i:
            return "I'll do my best to assist you."
        case .j:
            return "Let's collaborate and see if we can come up with a solution together."
        }
    }
    
}

/**
 from Flutter side
 List<String> aiAnswers = const [
     'Let me think for you.',
     'Let me research that for you.',
     'I\'ll look into it and get back to you.',
     'Let me double-check and confirm that information.',
     'Give me a moment to gather my thoughts.',
     'Let me consult my notes/resources and see if I can help.',
     'Let me see if I can find a solution for you.',
     'Let\'s review the facts and see if we can determine the answer.',
     'I\'ll do my best to assist you.',
     'Let\'s collaborate and see if we can come up with a solution together.',
   ];
 
 */
