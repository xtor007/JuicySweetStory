//
//  ScreenMenuView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct ScreenMenuView: View {

    @State var elements: [ScreenMenuElement]
    let callback: (ScreenMenuElement) -> Void

    var body: some View {
        VStack(spacing: 16) {
            ForEach(0..<elements.count, id: \.self) { elementIndex in
                ScreenMenuElementView(element: elements[elementIndex], callback: callback)
            }
        }
    }

}

struct ScreenMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenMenuView(elements: ScreenMenuElementPreview.preview) { _ in }
    }
}
