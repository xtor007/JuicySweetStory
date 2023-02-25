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
    @Published var currentTimeLeft: Int
    @Published var puzzles: [[Puzzle]]

    @Published var gameStatus: GameStatus?

    let level: Level

    private let timeForFirstLevel = 180
    private let timeDelta = 10
    private var timer: Timer?

    init(level: Level) {
        self.level = level
        let maxTime = timeForFirstLevel - (timeDelta * (level.number - 1))
        self.maxTime = maxTime
        currentTimeLeft = maxTime
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

    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.currentTimeLeft -= 1
            if self.currentTimeLeft == 0 {
                self.gameStatus = .lose
                timer.invalidate()
            }
        }
    }

    func stop() {
        if let timer {
            timer.invalidate()
            self.timer = nil
        }
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
        currentTimeLeft = maxTime
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
        gameStatus = .win
        timer?.invalidate()
    }

}
