//
//  BoardView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 25.02.2023.
//

import SwiftUI

struct BoardView: View {

    @EnvironmentObject var gameViewModel: GameViewModel
    @EnvironmentObject var levelViewModel: LevelViewModel

    var body: some View {
        GeometryReader { geo in
            let elementWidth = geo.size.width / CGFloat(LevelViewModel.columnsCount)
            let elementHeight = geo.size.height / CGFloat(LevelViewModel.rowsCount)
            ZStack(alignment: .topLeading) {
                ForEach(0..<levelViewModel.puzzles.count, id: \.self) { puzzlesIndex in
                    ForEach(0..<levelViewModel.puzzles[puzzlesIndex].count, id: \.self) { puzzleIndex in
                        let puzzle = levelViewModel.puzzles[puzzlesIndex][puzzleIndex]
                        puzzle.puzzleImage
                            .resizable()
                            .frame(width: elementWidth, height: elementHeight)
                            .offset(
                                x: CGFloat(puzzle.currentPosition.coordinateX) * elementWidth,
                                y: CGFloat(puzzle.currentPosition.coordinateY) * elementHeight
                            )
                    }
                }
                Asset.Images.bigCandyFrame.swiftUIImage
                    .resizable()
                    .scaledToFit()
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
            .environmentObject(LevelViewModel(level: LevelsStorage().getLevel(1)!))
    }
}
