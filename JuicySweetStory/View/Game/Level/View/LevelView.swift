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
        VStack {
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
        .background {
            Asset.Images.backgroundIcon.swiftUIImage
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(levelViewModel: LevelViewModel(level: LevelsStorage().getLevel(1)!))
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
    }
}
