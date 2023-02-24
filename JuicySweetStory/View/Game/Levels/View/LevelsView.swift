//
//  LevelsView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct LevelsView: View {

    private let levelsStorage: LevelsStorageProtocol = LevelsStorage()

    private let columns = [
        GridItem(.adaptive(minimum: 100, maximum: 100), spacing: 16)
    ]

    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<levelsStorage.levelCount, id: \.self) { levelIndex in
                    if let level = levelsStorage.getLevel(levelIndex + 1) {
                        LevelsViewItem(
                            level: level,
                            isOpen: level.number <= levelsStorage.maxLevel
                        )
                        .onTapGesture {
                            if level.number <= levelsStorage.maxLevel {
                                print(1)
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
    }

}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
