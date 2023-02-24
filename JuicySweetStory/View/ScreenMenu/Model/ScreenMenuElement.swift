//
//  ScreenMenuElement.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

protocol ScreenMenuElement {
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

    var title: String
    var type: ScreenElementMenuType

    static let preview = [
        ScreenMenuElementPreview(title: "Play", type: .justNavigation),
        ScreenMenuElementPreview(title: "Sound", type: .settings(firstState: .stateOn)),
        ScreenMenuElementPreview(title: "Vibro", type: .settings(firstState: .stateOff))
    ]

}
