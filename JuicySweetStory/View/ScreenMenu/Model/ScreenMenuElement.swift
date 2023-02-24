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
    case on, off
}
