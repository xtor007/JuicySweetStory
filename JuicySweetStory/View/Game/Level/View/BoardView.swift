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
        ZStack {
            Asset.Images.bigCandyFrame.swiftUIImage
                .resizable()
                .scaledToFit()
            GeometryReader { geo in
                let elementWidth = (geo.size.width) / CGFloat(LevelViewModel.columnsCount)
                let elementHeight = (geo.size.height) / CGFloat(LevelViewModel.rowsCount)
                ZStack(alignment: .topLeading) {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                        }
                    }
                    Asset.Colors.foregroundColor.swiftUIColor
                    puzzlesView(elementWidth: elementWidth, elementHeight: elementHeight)
                }
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: geo.size.width / CGFloat(LevelViewModel.columnsCount) / (CGFloat.pi / 2)
                    )
                )
            }
            .padding(16)
        }
        .aspectRatio(1, contentMode: .fit)
    }

    @ViewBuilder
    func puzzlesView(elementWidth: CGFloat, elementHeight: CGFloat) -> some View {
        ForEach(0..<levelViewModel.puzzles.count, id: \.self) { puzzlesIndex in
            ForEach(0..<levelViewModel.puzzles[puzzlesIndex].count, id: \.self) { puzzleIndex in
                let puzzle = levelViewModel.puzzles[puzzlesIndex][puzzleIndex]
                puzzle.puzzleImage
                    .resizable()
                    .frame(width: elementWidth - 8, height: elementHeight - 8)
                    .offset(
                        x: 4 + CGFloat(puzzle.currentPosition.coordinateX) * elementWidth,
                        y: 4 + CGFloat(puzzle.currentPosition.coordinateY) * elementHeight
                    )
                    .gesture(DragGesture(minimumDistance: 3.0, coordinateSpace: .local)
                        .onEnded { value in
                            levelViewModel.movePuzzle(
                                puzzle,
                                to: Direction.byDrag(translation: value.translation)
                            )
                        }
                    )
            }
        }
    }

}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
            .environmentObject(GameViewModel(levelsStorage: LevelsStorage()))
            .environmentObject(LevelViewModel(level: LevelsStorage().getLevel(1)!))
    }
}
