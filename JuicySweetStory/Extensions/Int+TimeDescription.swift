//
//  Int+TimeDescription.swift
//  JuicySweetStory
//
//  Created by Anatoliy Khramchenko on 26.02.2023.
//

import Foundation

extension Int {

    var timeDescription: String {
        var minutes = "\(self / 60)"
        if minutes.count < 2 {
            minutes = "0\(minutes)"
        }
        var seconds = "\(self % 60)"
        if seconds.count < 2 {
            seconds = "0\(seconds)"
        }
        return "\(minutes):\(seconds)"
    }

}
