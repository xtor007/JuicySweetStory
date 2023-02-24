//
//  LevelsStorageProtocol.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

protocol LevelsStorageProtocol {
    var maxLevel: Int { get set }
    func getLevel(_ levelNumber: Int) -> Level?
}
