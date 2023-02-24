//
//  LevelsStorage.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import Foundation

class LevelsStorage: LevelsStorageProtocol {

    var maxLevel = 1

    private let levels = [
        Level(
            number: 1,
            resultImage: Asset.Images.level1Global.swiftUIImage,
            items: [
                LevelItem(itemImage: Asset.Images.level100.swiftUIImage, correctX: 0, correctY: 0),
                LevelItem(itemImage: Asset.Images.level101.swiftUIImage, correctX: 0, correctY: 1),
                LevelItem(itemImage: Asset.Images.level102.swiftUIImage, correctX: 0, correctY: 2),
                LevelItem(itemImage: Asset.Images.level103.swiftUIImage, correctX: 0, correctY: 3),
                LevelItem(itemImage: Asset.Images.level110.swiftUIImage, correctX: 1, correctY: 0),
                LevelItem(itemImage: Asset.Images.level111.swiftUIImage, correctX: 1, correctY: 1),
                LevelItem(itemImage: Asset.Images.level112.swiftUIImage, correctX: 1, correctY: 2),
                LevelItem(itemImage: Asset.Images.level113.swiftUIImage, correctX: 1, correctY: 3),
                LevelItem(itemImage: Asset.Images.level120.swiftUIImage, correctX: 2, correctY: 0),
                LevelItem(itemImage: Asset.Images.level121.swiftUIImage, correctX: 2, correctY: 1),
                LevelItem(itemImage: Asset.Images.level122.swiftUIImage, correctX: 2, correctY: 2),
                LevelItem(itemImage: Asset.Images.level123.swiftUIImage, correctX: 2, correctY: 3),
                LevelItem(itemImage: Asset.Images.level130.swiftUIImage, correctX: 3, correctY: 0),
                LevelItem(itemImage: Asset.Images.level131.swiftUIImage, correctX: 3, correctY: 1),
                LevelItem(itemImage: Asset.Images.level132.swiftUIImage, correctX: 3, correctY: 2),
                LevelItem(itemImage: Asset.Images.level133.swiftUIImage, correctX: 3, correctY: 3)
            ]
        ),
        Level(
            number: 2,
            resultImage: Asset.Images.level2Global.swiftUIImage,
            items: [
                LevelItem(itemImage: Asset.Images.level200.swiftUIImage, correctX: 0, correctY: 0),
                LevelItem(itemImage: Asset.Images.level201.swiftUIImage, correctX: 0, correctY: 1),
                LevelItem(itemImage: Asset.Images.level202.swiftUIImage, correctX: 0, correctY: 2),
                LevelItem(itemImage: Asset.Images.level203.swiftUIImage, correctX: 0, correctY: 3),
                LevelItem(itemImage: Asset.Images.level210.swiftUIImage, correctX: 1, correctY: 0),
                LevelItem(itemImage: Asset.Images.level211.swiftUIImage, correctX: 1, correctY: 1),
                LevelItem(itemImage: Asset.Images.level212.swiftUIImage, correctX: 1, correctY: 2),
                LevelItem(itemImage: Asset.Images.level213.swiftUIImage, correctX: 1, correctY: 3),
                LevelItem(itemImage: Asset.Images.level220.swiftUIImage, correctX: 2, correctY: 0),
                LevelItem(itemImage: Asset.Images.level221.swiftUIImage, correctX: 2, correctY: 1),
                LevelItem(itemImage: Asset.Images.level222.swiftUIImage, correctX: 2, correctY: 2),
                LevelItem(itemImage: Asset.Images.level223.swiftUIImage, correctX: 2, correctY: 3),
                LevelItem(itemImage: Asset.Images.level230.swiftUIImage, correctX: 3, correctY: 0),
                LevelItem(itemImage: Asset.Images.level231.swiftUIImage, correctX: 3, correctY: 1),
                LevelItem(itemImage: Asset.Images.level232.swiftUIImage, correctX: 3, correctY: 2),
                LevelItem(itemImage: Asset.Images.level233.swiftUIImage, correctX: 3, correctY: 3)
            ]
        ),
        Level(
            number: 3,
            resultImage: Asset.Images.level3Global.swiftUIImage,
            items: [
                LevelItem(itemImage: Asset.Images.level300.swiftUIImage, correctX: 0, correctY: 0),
                LevelItem(itemImage: Asset.Images.level301.swiftUIImage, correctX: 0, correctY: 1),
                LevelItem(itemImage: Asset.Images.level302.swiftUIImage, correctX: 0, correctY: 2),
                LevelItem(itemImage: Asset.Images.level303.swiftUIImage, correctX: 0, correctY: 3),
                LevelItem(itemImage: Asset.Images.level310.swiftUIImage, correctX: 1, correctY: 0),
                LevelItem(itemImage: Asset.Images.level311.swiftUIImage, correctX: 1, correctY: 1),
                LevelItem(itemImage: Asset.Images.level312.swiftUIImage, correctX: 1, correctY: 2),
                LevelItem(itemImage: Asset.Images.level313.swiftUIImage, correctX: 1, correctY: 3),
                LevelItem(itemImage: Asset.Images.level320.swiftUIImage, correctX: 2, correctY: 0),
                LevelItem(itemImage: Asset.Images.level321.swiftUIImage, correctX: 2, correctY: 1),
                LevelItem(itemImage: Asset.Images.level322.swiftUIImage, correctX: 2, correctY: 2),
                LevelItem(itemImage: Asset.Images.level323.swiftUIImage, correctX: 2, correctY: 3),
                LevelItem(itemImage: Asset.Images.level330.swiftUIImage, correctX: 3, correctY: 0),
                LevelItem(itemImage: Asset.Images.level331.swiftUIImage, correctX: 3, correctY: 1),
                LevelItem(itemImage: Asset.Images.level332.swiftUIImage, correctX: 3, correctY: 2),
                LevelItem(itemImage: Asset.Images.level333.swiftUIImage, correctX: 3, correctY: 3)
            ]
        ),
        Level(number: 4, resultImage: Asset.Images.level4Global.swiftUIImage, items: []),
        Level(number: 5, resultImage: Asset.Images.level5Global.swiftUIImage, items: []),
        Level(number: 6, resultImage: Asset.Images.level6Global.swiftUIImage, items: []),
        Level(number: 7, resultImage: Asset.Images.level7Global.swiftUIImage, items: []),
        Level(number: 8, resultImage: Asset.Images.level8Global.swiftUIImage, items: []),
        Level(number: 9, resultImage: Asset.Images.level9Global.swiftUIImage, items: []),
        Level(number: 10, resultImage: Asset.Images.level10Global.swiftUIImage, items: []),
        Level(number: 11, resultImage: Asset.Images.level11Global.swiftUIImage, items: []),
        Level(number: 12, resultImage: Asset.Images.level12Global.swiftUIImage, items: [])
    ]

    func getLevel(_ levelNumber: Int) -> Level? {
        return levels[safe: levelNumber - 1]
    }

}
