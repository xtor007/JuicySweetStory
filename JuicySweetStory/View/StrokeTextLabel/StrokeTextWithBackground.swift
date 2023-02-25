//
//  StrokeTextWithBackground.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct StrokeTextWithBackground: View {

    let text: String
    let fontSize: CGFloat
    let borderWidth: CGFloat

    var body: some View {
        StrokeText(text: text, fontSize: fontSize, borderWidth: borderWidth)
            .padding(4)
            .padding(.horizontal, 4)
            .background(
                Capsule()
                    .fill(
                        Asset.Colors.foregroundColor.swiftUIColor
                    )
                    .overlay {
                        Capsule()
                            .stroke(style: .init(
                                lineWidth: 5
                            ))
                            .fill(Gradients.accentGradient)
                    }
            )
    }

}
