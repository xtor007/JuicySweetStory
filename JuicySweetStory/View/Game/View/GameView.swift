//
//  GameView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct GameView: View {

    @EnvironmentObject var gameViewModel: GameViewModel

    var body: some View {
        if let level = gameViewModel.currentLevel {
            LevelView(levelViewModel: LevelViewModel(level: level))
                .navigationBarBackButtonHidden(true)
        } else {
            Text("Smth not ok")
        }
    }

}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
    }
}
