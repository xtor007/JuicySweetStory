//
//  MainView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct MainView: View {

    @State var willMoveToNextScreen = false
    @State var nextView = AnyView(ContentView())

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Asset.Images.candyIcon.swiftUIImage
                    .resizable()
                    .scaledToFit()
                    .frame(height: 233)
                ScreenMenuView(elements: MainViewMenuElement.allCases) { element in
                    openNewScreen(elementId: element.elementId)
                }
                Spacer()
            }
            .padding(16)
            .background {
                Asset.Images.backgroundIcon.swiftUIImage
                    .resizable()
                    .ignoresSafeArea()
            }
            .navigationDestination(isPresented: $willMoveToNextScreen) {
                nextView
            }
        }
    }

    private func openNewScreen(elementId: Int) {
        guard let mainManuElement = MainViewMenuElement(rawValue: elementId) else {
            return
        }
        switch mainManuElement {
        case .play:
            nextView = AnyView(ContentView())
        case .gameRules:
            nextView = AnyView(ContentView())
        case .settings:
            nextView = AnyView(SettingsView())
        case .privacyPolicy:
            nextView = AnyView(ContentView())
        }
        willMoveToNextScreen = true
    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
