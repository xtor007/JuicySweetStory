//
//  SettingsView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            ScreenMenuView(elements: SettingsMenuElement.allCases) { element in
                print(element.elementId)
            }
            Spacer()
        }
        .padding(16)
        .navigationBar(title: Strings.Settings.title)
        .background {
            Asset.Images.backgroundIcon.swiftUIImage
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
