//
//  RefreshButton.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct RefreshButton: View {
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
                Asset.Images.refreshButtonIcon.swiftUIImage
                    .resizable()
                    .scaledToFit()
                    .padding(8)
            }
            .aspectRatio(1, contentMode: .fit)
        }
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton {}
    }
}
