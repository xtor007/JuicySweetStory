//
//  GameFinishView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 26.02.2023.
//

import SwiftUI

struct GameFinishView: View {

    let status: GameStatus

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var gameViewModel: GameViewModel
    @EnvironmentObject var levelViewModel: LevelViewModel

    var body: some View {
        ZStack {
            VStack {
                backgroundIcon()
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            .padding(.top, 16)
        }
        .background {
            Asset.Colors.shadowColor.swiftUIColor.opacity(0.8)
                .ignoresSafeArea()
        }
        .onAppear {
            if status == .win {
                gameViewModel.isLevelOpen[levelViewModel.level.number] = true
            }
        }
    }

    func backgroundIcon() -> Image {
        switch status {
        case .win:
            return Asset.Images.winIcon.swiftUIImage
        case .lose:
            return Asset.Images.loseIcon.swiftUIImage
        }
    }

}

struct GameFinishView_Previews: PreviewProvider {
    static var previews: some View {
        GameFinishView(status: .win)
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
            .environmentObject(LevelViewModel(level: LevelsStorage().getLevel(1)!))
    }
}
