//
//  ScreenMenuView.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct ScreenMenuView: View {

    @State var elements: [ScreenMenuElement]

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }

}

struct ScreenMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenMenuView(elements: ScreenMenuElementPreview.preview)
    }
}
