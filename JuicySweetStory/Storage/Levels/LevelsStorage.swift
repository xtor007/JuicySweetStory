//
//  LevelsStorage.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

class LevelsStorage: LevelsStorageProtocol {

    var maxLevel = 1

    private let levels = [Level]()

    func getLevel(_ levelNumber: Int) -> Level? {
        return levels[safe: levelNumber]
    }

}
