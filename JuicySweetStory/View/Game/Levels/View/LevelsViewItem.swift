//
//  LevelsViewItem.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct LevelsViewItem: View {

    let level: Level
    let isOpen: Bool

    var body: some View {
        ZStack {
            level.resultImage
                .resizable()
                .scaledToFit()
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )
                .padding(5)
            Asset.Images.smallCandyFrame.swiftUIImage
                .resizable()
                .scaledToFit()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    numberView()
                }
            }
        }
    }

    @ViewBuilder
    func numberView() -> some View {
        ZStack {
            Circle()
                .fill(
                    Asset.Colors.foregroundColor.swiftUIColor
                )
                .overlay {
                    Circle()
                        .stroke(style: .init(lineWidth: 2))
                        .fill(
                            Gradients.accentGradient
                        )
                }
                .frame(width: 24)
            StrokeText(text: "\(level.number)", fontSize: 15, borderWidth: 12)
                .frame(width: 24, height: 24)
        }
        .padding(4)
    }

}

struct LevelsViewItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LevelsViewItem(level: LevelsStorage().getLevel(1)!, isOpen: true)
            LevelsViewItem(level: LevelsStorage().getLevel(1)!, isOpen: false)
        }
        .frame(width: 100, height: 100)
    }
}
