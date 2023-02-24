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
                    Button {
                        print(1)
                    } label: {
                        Text("b")
                    }
                    Spacer()
                }
            }
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
        ContentView()
            .navigationBar(title: "Settings")
    }
}
