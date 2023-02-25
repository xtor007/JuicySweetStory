//
//  LevelNavigationBar.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct LevelNavigationBar: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var gameViewModel: GameViewModel
    @EnvironmentObject var levelViewModel: LevelViewModel

    var body: some View {
        HStack {
            BackButton {
                presentationMode.wrappedValue.dismiss()
                levelViewModel.stop()
                gameViewModel.currentLevel = nil
            }
            Spacer()
            RefreshButton {
                levelViewModel.refresh()
            }
            Spacer()
            StrokeTextWithBackground(text: "\(Strings.Level.level)-\(levelViewModel.level.number)", fontSize: 24, borderWidth: 18)
            Spacer()
            StrokeTextWithBackground(text: levelViewModel.currentTimeLeft.timeDescription, fontSize: 24, borderWidth: 18)
        }
        .frame(height: 40)
    }

}

struct LevelNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        LevelNavigationBar()
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
            .environmentObject(LevelViewModel(level: LevelsStorage().getLevel(1)!))
    }
}
