//
//  BackButton.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(
                        Asset.Colors.foregroundColor.swiftUIColor
                    )
                    .overlay {
                        Circle()
                            .stroke(style: .init(lineWidth: 5))
                            .fill(
                                Gradients.accentGradient
                            )
                    }
                Asset.Images.backButtonIcon.swiftUIImage
                    .resizable()
                    .scaledToFit()
                    .padding(18)
            }
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton {}
    }
}
