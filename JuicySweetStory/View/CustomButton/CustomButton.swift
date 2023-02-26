//
//  CustomButton.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 26.02.2023.
//

import SwiftUI

struct CustomButton: View {

    let buttonIcon: Image
    let action: (() -> Void)?

    var body: some View {
        if let action {
            Button(action: action) {
                buttonContent
            }
        } else {
            buttonContent
        }
    }

    @ViewBuilder
    var buttonContent: some View {
        ZStack {
            Circle()
                .fill(
                    Asset.Colors.foregroundColor.swiftUIColor
                )
                .overlay {
                    if action != nil {
                        Circle()
                            .stroke(style: .init(lineWidth: 5))
                            .fill(
                                Gradients.accentGradient
                            )
                    } else {
                        Circle()
                            .stroke(style: .init(lineWidth: 5))
                            .fill(
                                Asset.Colors.blockColor.swiftUIColor
                            )
                    }
                }
            buttonIcon
                .resizable()
                .scaledToFit()
                .padding(8)
        }
        .aspectRatio(1, contentMode: .fit)
    }

}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonIcon: Asset.Images.backButtonIcon.swiftUIImage, action: nil)
    }
}
