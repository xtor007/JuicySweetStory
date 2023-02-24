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
        HStack(spacing: 16) {

            HStack {
                Spacer()
                Text(element.title.uppercased())
                    .font(.custom(FontFamily.Knewave.regular, size: 34))
                    .foregroundColor(Asset.Colors.foregroundColor.swiftUIColor)
                Spacer()
            }
            .frame(height: 70)
            .background {
                roundedRectangleBackground()
            }
            .onTapGesture {
                if element.type == .justNavigation {
                    callback(element)
                }
            }

            if let settingState {
                HStack {
                    settingImage(state: settingState)
                        .resizable()
                        .scaledToFit()
                    .frame(height: 28)
                }
                .frame(width: 60, height: 60)
                .background {
                    roundedRectangleBackground()
                }
                .onTapGesture {
                    callback(element)
                    self.settingState = settingState.toggle()
                }
            }

        }
    }

    init(element: ScreenMenuElement, callback: @escaping (ScreenMenuElement) -> Void) {
        self.element = element
        self.callback = callback
        switch element.type {
        case .settings(let state):
            self._settingState = State(wrappedValue: state)
        default:
            break
        }
    }

    @ViewBuilder
    func roundedRectangleBackground() -> some View {
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

    func settingImage(state: SettingState) -> Image {
        switch state {
        case .stateOn:
            return Asset.Images.checkboxOnIcon.swiftUIImage
        case .stateOff:
            return Asset.Images.checkboxOffIcon.swiftUIImage
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
