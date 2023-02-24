//
//  Gradients.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

enum Gradients {
    static let accentGradient = LinearGradient(
        colors: [
            Asset.Colors.lightAccentColor.swiftUIColor,
            Asset.Colors.darkAccentColor.swiftUIColor
        ],
        startPoint: .top,
        endPoint: .bottom
    )
}
