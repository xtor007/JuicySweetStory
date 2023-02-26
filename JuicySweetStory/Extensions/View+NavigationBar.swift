//
//  View+NavigationBar.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct CustomNavigationBar: ViewModifier {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var title: String

    func body(content: Content) -> some View {
        VStack {
            ZStack {
                StrokeText(
                    text: title.uppercased(),
                    fontSize: 34,
                    borderWidth: 30
                )
                .frame(height: 63)
                HStack {
                    CustomButton(buttonIcon: Asset.Images.backButtonIcon.swiftUIImage) {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .frame(width: 60)
                    Spacer()
                }
            }
            .padding(16)
            content
        }
    }

}

extension View {
    func navigationBar(title: String) -> some View {
        ModifiedContent(content: self, modifier: CustomNavigationBar(title: title))
    }
}

struct ViewNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
        }
            .navigationBar(title: "Settings")
    }
}
