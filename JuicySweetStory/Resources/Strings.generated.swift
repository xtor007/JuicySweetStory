// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  internal enum Finish {
    /// Level
    internal static let level = Strings.tr("Localizable", "finish.level", fallback: "Level")
    /// Failed
    internal static let lose = Strings.tr("Localizable", "finish.lose", fallback: "Failed")
    /// Completed
    internal static let win = Strings.tr("Localizable", "finish.win", fallback: "Completed")
  }
  internal enum Level {
    /// LVL
    internal static let level = Strings.tr("Localizable", "level.level", fallback: "LVL")
  }
  internal enum Levels {
    /// Levels
    internal static let title = Strings.tr("Localizable", "levels.title", fallback: "Levels")
  }
  internal enum MainMenu {
    /// Game rules
    internal static let gameRules = Strings.tr("Localizable", "mainMenu.gameRules", fallback: "Game rules")
    /// Localizable.strings
    ///   JuicySweetStory
    /// 
    ///   Created by Anatoliy Khramchenko on 24.02.2023.
    internal static let play = Strings.tr("Localizable", "mainMenu.play", fallback: "Play")
    /// Privacy policy
    internal static let privacyPolicy = Strings.tr("Localizable", "mainMenu.privacyPolicy", fallback: "Privacy policy")
    /// Settings
    internal static let settings = Strings.tr("Localizable", "mainMenu.settings", fallback: "Settings")
  }
  internal enum Settings {
    /// Rate us
    internal static let rateUs = Strings.tr("Localizable", "settings.rateUs", fallback: "Rate us")
    /// Sound
    internal static let sound = Strings.tr("Localizable", "settings.sound", fallback: "Sound")
    /// Settings
    internal static let title = Strings.tr("Localizable", "settings.title", fallback: "Settings")
    /// Vibro
    internal static let vibro = Strings.tr("Localizable", "settings.vibro", fallback: "Vibro")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
