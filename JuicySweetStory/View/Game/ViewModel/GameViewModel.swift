//
//  GameViewModel.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import Foundation

class GameViewModel: ObservableObject {

    let levelsStorage: LevelsStorageProtocol

    @Published var isLevelOpen: [Bool]

    @Published var currentLevel: Level? {
        didSet {
            if currentLevel != nil {
                willOpenGame = true
            }
        }
    }
    @Published var willOpenGame = false

    init(levelsStorage: LevelsStorageProtocol) {
        self.levelsStorage = levelsStorage
        isLevelOpen = Array(repeating: true, count: levelsStorage.maxLevel)
        isLevelOpen += Array(repeating: false, count: levelsStorage.levelCount - levelsStorage.maxLevel)
    }

    func openLevel(levelIndex: Int) {
        currentLevel = levelsStorage.getLevel(levelIndex + 1)
    }

}
