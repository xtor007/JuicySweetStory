//
//  ScreenMenuElementView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct ScreenMenuElementView: View {

    @State var settingState: SettingState?

    let element: ScreenMenuElement
    let callback: (ScreenMenuElement) -> Void

    var body: some View {
        HStack {
            HStack {
                Spacer()
                Text(element.title)
                    .font(.custom(FontFamily.Knewave.regular, size: 34))
                    .foregroundColor(Asset.Colors.foregroundColor.swiftUIColor)
                Spacer()
            }
            .frame(height: 70)
            .background {
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        Gradients.accentGradient
                    )
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(style: .init(
                                lineWidth: 5
                            ))
                            .fill(Asset.Colors.foregroundColor.swiftUIColor)
                    }
            }
        }
    }

    init(element: ScreenMenuElement, callback: @escaping (ScreenMenuElement) -> Void) {
        self.element = element
        self.callback = callback
        switch element.type {
        case .settings(let state):
            self.settingState = state
        default:
            break
        }
    }

}

struct ScreenMenuElementView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScreenMenuElementView(element: ScreenMenuElementPreview.preview[0]) { _ in }
            ScreenMenuElementView(element: ScreenMenuElementPreview.preview[1]) { _ in }
            ScreenMenuElementView(element: ScreenMenuElementPreview.preview[2]) { _ in }
        }
        .background(Color.red)
    }
}
