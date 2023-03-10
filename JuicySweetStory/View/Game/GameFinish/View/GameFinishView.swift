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
                backgroundIcon
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            .padding(.top, 16)
            VStack(spacing: 24) {
                Spacer()
                    StrokeText(text: Strings.Finish.level, fontSize: 64, borderWidth: 60)
                        .frame(height: 70)
                    StrokeText(text: text.uppercased(), fontSize: 64, borderWidth: 60)
                        .frame(height: 70)
                StrokeTextWithBackground(
                    text: "\(Strings.Finish.time): \((levelViewModel.maxTime - levelViewModel.currentTimeLeft).timeDescription)",
                    fontSize: 34,
                    borderWidth: 18
                )
                    .frame(maxWidth: .infinity, maxHeight: 60)
                if status == .win {
                    StrokeTextWithBackground(
                        text: "\(Strings.Finish.bestTime): \(62.timeDescription)",
                        fontSize: 34,
                        borderWidth: 18
                    )
                        .frame(maxWidth: .infinity, maxHeight: 60)
                }
                HStack(spacing: 32) {
                    CustomButton(buttonIcon: Asset.Images.homeButtonIcon.swiftUIImage) {
                        presentationMode.wrappedValue.dismiss()
                        gameViewModel.currentLevel = nil
                    }
                        .frame(width: 60)
                    CustomButton(buttonIcon: Asset.Images.refreshButtonIcon.swiftUIImage) {
                        levelViewModel.gameStatus = nil
                        levelViewModel.refresh()
                        levelViewModel.start()
                    }
                        .frame(width: 60)
                    let nextAction: (() -> Void)? = status == .win ? {
                        if let newLevel = gameViewModel.openNextLevel() {
                            levelViewModel.updateLevel(newLevel: newLevel)
                        } else {
                            presentationMode.wrappedValue.dismiss()
                        }
                    } : nil
                    CustomButton(
                        buttonIcon: status == .win
                        ? Asset.Images.nextButtonIcon.swiftUIImage
                        : Asset.Images.blockedNextButtonIcon.swiftUIImage,
                        action: nextAction
                    )
                        .frame(width: 60)
                }
            }
            .padding(.bottom, 60)
        }
        .padding(.horizontal, 16)
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

    var backgroundIcon: Image {
        switch status {
        case .win:
            return Asset.Images.winIcon.swiftUIImage
        case .lose:
            return Asset.Images.loseIcon.swiftUIImage
        }
    }

    var text: String {
        switch status {
        case .win:
            return Strings.Finish.win
        case .lose:
            return Strings.Finish.lose
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
