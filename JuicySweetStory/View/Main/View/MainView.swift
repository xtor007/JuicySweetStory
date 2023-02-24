//
//  MainView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Spacer()
            Asset.Images.candyIcon.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(height: 233)
            ScreenMenuView(elements: MainViewMenuElement.allCases) { element in
                print(element.elementId)
            }
            Spacer()
        }
        .padding(16)
        .background {
            Asset.Images.backgroundIcon.swiftUIImage
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
