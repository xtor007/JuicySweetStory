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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(levelViewModel: LevelViewModel(level: LevelsStorage().getLevel(1)!))
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
    }
}
