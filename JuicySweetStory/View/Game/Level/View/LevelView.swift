//
//  LevelView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct LevelView: View {

    @EnvironmentObject var gameViewModel: GameViewModel

    @StateObject var levelViewModel: LevelViewModel

    var body: some View {
        ZStack {
            VStack {
                LevelNavigationBar()
                    .environmentObject(levelViewModel)
                Spacer()
                BoardView()
                    .frame(width: 357, height: 350)
                    .environmentObject(levelViewModel)
                Spacer()
                ZStack {
                    levelViewModel.level.resultImage
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 35))
                        .padding(8)
                    Asset.Images.bigCandyFrame.swiftUIImage
                        .resizable()
                        .scaledToFit()
                }
                .frame(height: 226)
                Spacer()
            }
            .padding(16)
            .background {
                Asset.Images.backgroundIcon.swiftUIImage
                    .resizable()
                    .ignoresSafeArea()
            }
            if let gameStatus = levelViewModel.gameStatus {
                GameFinishView(status: gameStatus)
                    .environmentObject(levelViewModel)
            }
        }
        .onAppear {
            levelViewModel.start()
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(levelViewModel: LevelViewModel(level: LevelsStorage().getLevel(1)!))
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
    }
}
