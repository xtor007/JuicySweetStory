//
//  SettingsMenuElement.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

enum SettingsMenuElement: Int, ScreenMenuElement, CaseIterable {

    var elementId: Int {
        return rawValue
    }

    var title: String {
        switch self {
        case .sound:
            return Strings.Settings.sound
        case .vibro:
            return Strings.Settings.vibro
        case .rateUs:
            return Strings.Settings.rateUs
        }
    }

    var type: ScreenElementMenuType {
        switch self {
        case .sound:
            return .settings(firstState: .stateOn)
        case .vibro:
            return .settings(firstState: .stateOff)
        case .rateUs:
            return .justNavigation
        }
    }

    case sound, vibro, rateUs

}
