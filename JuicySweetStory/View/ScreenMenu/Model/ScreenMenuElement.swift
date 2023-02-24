//
//  ScreenMenuElement.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

protocol ScreenMenuElement {
    var elementId: Int { get }
    var title: String { get }
    var type: ScreenElementMenuType { get }
}

enum ScreenElementMenuType {
    case justNavigation, settings(firstState: SettingState)
}

enum SettingState {
    case stateOn, stateOff
}

struct ScreenMenuElementPreview: ScreenMenuElement {

    var elementId: Int
    var title: String
    var type: ScreenElementMenuType

    static let preview = [
        ScreenMenuElementPreview(elementId: 0, title: "Play", type: .justNavigation),
        ScreenMenuElementPreview(elementId: 1, title: "Sound", type: .settings(firstState: .stateOn)),
        ScreenMenuElementPreview(elementId: 2, title: "Vibro", type: .settings(firstState: .stateOff))
    ]

}
