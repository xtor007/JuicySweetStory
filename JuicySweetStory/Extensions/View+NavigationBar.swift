//
//  View+NavigationBar.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct CustomNavigationBar: ViewModifier {

    @State var title: String

    func body(content: Content) -> some View {
        VStack {
            ZStack {
                StrokeTextLabel(
                    text: title.uppercased(),
                    fontSize: 34,
                    borderWidth: 10
                )
                .frame(height: 63)
                HStack {
                    BackButton {
                        print(1)
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
