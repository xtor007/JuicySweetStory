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
            Text("aboba")
        }
        .onAppear {
            if status == .win {
                gameViewModel.isLevelOpen[levelViewModel.level.number] = true
            }
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
