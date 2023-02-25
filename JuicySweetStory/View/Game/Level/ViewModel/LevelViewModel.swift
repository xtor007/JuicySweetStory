//
//  LevelViewModel.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import Foundation

class LevelViewModel: ObservableObject {

    static let columnsCount = 4
    static let rowsCount = 4

    @Published var maxTime: Int
    @Published var currentTime = 0
    @Published var puzzles: [[Puzzle]]

    @Published var isWin = false
    @Published var isLose = false

    let level: Level

    private let timeForFirstLevel = 180
    private let timeDelta = 10

    init(level: Level) {
        self.level = level
        maxTime = timeForFirstLevel - (timeDelta * (level.number - 1))
        puzzles = LevelViewModel.createPuzzles(level: level)
    }

    static func createPuzzles(level: Level) -> [[Puzzle]] {
        var items = level.items
        var puzzeles = [[Puzzle]]()
        for coordinateX in 0..<columnsCount {
            var puzzelesRow = [Puzzle]()
            for coordinateY in 0..<rowsCount {
                guard let item = items.randomElement() else {
                    return []
                }
                items.removeAll { itemForRemove in
                    return itemForRemove == item
                }
                puzzelesRow.append(Puzzle(
                    puzzleImage: item.itemImage,
                    currentPosition: Position(coordinateX: coordinateX, coordinateY: coordinateY),
                    rightPosition: Position(coordinateX: item.correctX, coordinateY: item.correctY)
                ))
            }
            puzzeles.append(puzzelesRow)
        }
        return puzzeles
    }

    func movePuzzle(_ puzzle: Puzzle, to direction: Direction) {
        let newCoordinate = puzzle.currentPosition.move(to: direction)
        guard 0..<LevelViewModel.columnsCount ~= newCoordinate.coordinateX
            && 0..<LevelViewModel.rowsCount ~= newCoordinate.coordinateY else {
            return
        }
        var draggenPuzzle = puzzles[puzzle.currentPosition.coordinateX][puzzle.currentPosition.coordinateY]
        draggenPuzzle.currentPosition = newCoordinate
        var displacedPuzzle = puzzles[newCoordinate.coordinateX][newCoordinate.coordinateY]
        displacedPuzzle.currentPosition = puzzle.currentPosition
        puzzles[newCoordinate.coordinateX][newCoordinate.coordinateY] = draggenPuzzle
        puzzles[puzzle.currentPosition.coordinateX][puzzle.currentPosition.coordinateY] = displacedPuzzle
        checkWin()
    }

    func refresh() {
        puzzles = LevelViewModel.createPuzzles(level: level)
        currentTime = 0
    }

    private func checkWin() {
        for coordinateX in 0..<LevelViewModel.columnsCount {
            for coordinateY in 0..<LevelViewModel.rowsCount {
                let puzzle = puzzles[coordinateX][coordinateY]
                if puzzle.currentPosition != puzzle.rightPosition {
                    return
                }
            }
        }
        isWin = true
        print("WIIIIIIIIN")
    }

}
