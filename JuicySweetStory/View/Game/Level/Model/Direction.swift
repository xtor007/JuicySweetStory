//
//  Direction.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import Foundation

enum Direction {

    case right, down, left, top

    static func byDrag(translation: CGSize) -> Direction {
        switch(translation.width, translation.height) {
        case (...0, -30...30):  return .left
        case (0..., -30...30):  return .right
        case (-100...100, ...0):  return .top
        case (-100...100, 0...):  return .down
        default:  return .top
        }
    }

}
