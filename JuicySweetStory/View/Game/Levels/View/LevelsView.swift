//
//  LevelsView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct LevelsView: View {

    @EnvironmentObject var gameViewModel: GameViewModel

    private let columns = [
        GridItem(.adaptive(minimum: 100, maximum: 100), spacing: 16)
    ]

    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(0..<gameViewModel.levelsStorage.levelCount, id: \.self) { levelIndex in
                    if let level = gameViewModel.levelsStorage.getLevel(levelIndex + 1) {
                        LevelsViewItem(
                            level: level,
                            isOpen: gameViewModel.isLevelOpen[levelIndex]
                        )
                        .onTapGesture {
                            if gameViewModel.isLevelOpen[levelIndex] {
                                gameViewModel.openLevel(levelIndex: levelIndex)
                            }
                        }
                    }
                }
            }
            .padding(16)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBar(title: Strings.Levels.title)
        .background {
            Asset.Images.backgroundIcon.swiftUIImage
                .resizable()
                .ignoresSafeArea()
        }
        .navigationDestination(isPresented: $gameViewModel.willOpenGame) {
            ContentView()
        }
    }

}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
    }
}
