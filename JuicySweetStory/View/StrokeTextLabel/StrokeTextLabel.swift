//
//  StrokeTextLabel.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 24.02.2023.
//

import SwiftUI

struct StrokeTextLabel: UIViewRepresentable {

    let text: String
    let fontSize: CGFloat
    let borderWidth: CGFloat

    func makeUIView(context: Context) -> UILabel {
        let attributedStringParagraphStyle = NSMutableParagraphStyle()
        attributedStringParagraphStyle.alignment = NSTextAlignment.center
        let attributedString = NSAttributedString(
            string: text,
            attributes: [
                NSAttributedString.Key.paragraphStyle: attributedStringParagraphStyle,
                NSAttributedString.Key.strokeWidth: borderWidth,
                NSAttributedString.Key.foregroundColor: Asset.Colors.foregroundColor.color,
                NSAttributedString.Key.strokeColor: Asset.Colors.accentColor.color,
                NSAttributedString.Key.font: FontFamily.Knewave.regular.font(size: fontSize)
            ]
        )
        let strokeLabel = UILabel(frame: CGRect.zero)
        strokeLabel.attributedText = attributedString
        strokeLabel.backgroundColor = UIColor.clear
        strokeLabel.sizeToFit()
        strokeLabel.center = CGPoint.init(x: 0.0, y: 0.0)
        return strokeLabel
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }

}

struct StrokeText: View {

    let text: String
    let fontSize: CGFloat
    let borderWidth: CGFloat

    var body: some View {
        ZStack {
            StrokeTextLabel(text: text, fontSize: fontSize, borderWidth: borderWidth)
            Text(text)
                .foregroundColor(Asset.Colors.foregroundColor.swiftUIColor)
                .font(.custom(FontFamily.Knewave.regular, size: fontSize))
        }
    }

}
