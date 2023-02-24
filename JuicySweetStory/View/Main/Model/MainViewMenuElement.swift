//
//  MainViewMenuElement.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

enum MainViewMenuElement: Int, ScreenMenuElement, CaseIterable {

    var elementId: Int {
        return rawValue
    }

    var title: String {
        switch self {
        case .play:
            return Strings.MainMenu.play
        case .gameRules:
            return Strings.MainMenu.gameRules
        case .settings:
            return Strings.MainMenu.settings
        case .privacyPolicy:
            return Strings.MainMenu.privacyPolicy
        }
    }

    var type: ScreenElementMenuType {
        return .justNavigation
    }

    case play, gameRules, settings, privacyPolicy

}
