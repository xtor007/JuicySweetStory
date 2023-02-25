//
//  Puzzle.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct Puzzle {
    let puzzleImage: Image
    var currentPosition: Position
    let rightPosition: Position
}

struct Position: Equatable {

    var coordinateX: Int
    var coordinateY: Int

    func move(to direction: Direction) -> Position {
        switch direction {
        case .right:
            return Position(coordinateX: coordinateX + 1, coordinateY: coordinateY)
        case .down:
            return Position(coordinateX: coordinateX, coordinateY: coordinateY + 1)
        case .left:
            return Position(coordinateX: coordinateX - 1, coordinateY: coordinateY)
        case .up:
            return Position(coordinateX: coordinateX, coordinateY: coordinateY - 1)
        }
    }

}
