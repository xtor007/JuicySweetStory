// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Assets {
    internal static let accentColor = ColorAsset(name: "AccentColor")
  }
  internal enum Colors {
    internal static let accentColor = ColorAsset(name: "accentColor")
    internal static let darkAccentColor = ColorAsset(name: "darkAccentColor")
    internal static let foregroundColor = ColorAsset(name: "foregroundColor")
    internal static let lightAccentColor = ColorAsset(name: "lightAccentColor")
  }
  internal enum Images {
    internal static let checkboxOffIcon = ImageAsset(name: "checkboxOffIcon")
    internal static let checkboxOnIcon = ImageAsset(name: "checkboxOnIcon")
    internal static let smallCandyFrame = ImageAsset(name: "smallCandyFrame")
    internal static let level100 = ImageAsset(name: "level100")
    internal static let level101 = ImageAsset(name: "level101")
    internal static let level102 = ImageAsset(name: "level102")
    internal static let level103 = ImageAsset(name: "level103")
    internal static let level110 = ImageAsset(name: "level110")
    internal static let level111 = ImageAsset(name: "level111")
    internal static let level112 = ImageAsset(name: "level112")
    internal static let level113 = ImageAsset(name: "level113")
    internal static let level120 = ImageAsset(name: "level120")
    internal static let level121 = ImageAsset(name: "level121")
    internal static let level122 = ImageAsset(name: "level122")
    internal static let level123 = ImageAsset(name: "level123")
    internal static let level130 = ImageAsset(name: "level130")
    internal static let level131 = ImageAsset(name: "level131")
    internal static let level132 = ImageAsset(name: "level132")
    internal static let level133 = ImageAsset(name: "level133")
    internal static let level1Global = ImageAsset(name: "level1Global")
    internal static let level10Global = ImageAsset(name: "level10Global")
    internal static let level11Global = ImageAsset(name: "level11Global")
    internal static let level12Global = ImageAsset(name: "level12Global")
    internal static let level200 = ImageAsset(name: "level200")
    internal static let level201 = ImageAsset(name: "level201")
    internal static let level202 = ImageAsset(name: "level202")
    internal static let level203 = ImageAsset(name: "level203")
    internal static let level210 = ImageAsset(name: "level210")
    internal static let level211 = ImageAsset(name: "level211")
    internal static let level212 = ImageAsset(name: "level212")
    internal static let level213 = ImageAsset(name: "level213")
    internal static let level220 = ImageAsset(name: "level220")
    internal static let level221 = ImageAsset(name: "level221")
    internal static let level222 = ImageAsset(name: "level222")
    internal static let level223 = ImageAsset(name: "level223")
    internal static let level230 = ImageAsset(name: "level230")
    internal static let level231 = ImageAsset(name: "level231")
    internal static let level232 = ImageAsset(name: "level232")
    internal static let level233 = ImageAsset(name: "level233")
    internal static let level2Global = ImageAsset(name: "level2Global")
    internal static let level300 = ImageAsset(name: "level300")
    internal static let level301 = ImageAsset(name: "level301")
    internal static let level302 = ImageAsset(name: "level302")
    internal static let level303 = ImageAsset(name: "level303")
    internal static let level310 = ImageAsset(name: "level310")
    internal static let level311 = ImageAsset(name: "level311")
    internal static let level312 = ImageAsset(name: "level312")
    internal static let level313 = ImageAsset(name: "level313")
    internal static let level320 = ImageAsset(name: "level320")
    internal static let level321 = ImageAsset(name: "level321")
    internal static let level322 = ImageAsset(name: "level322")
    internal static let level323 = ImageAsset(name: "level323")
    internal static let level330 = ImageAsset(name: "level330")
    internal static let level331 = ImageAsset(name: "level331")
    internal static let level332 = ImageAsset(name: "level332")
    internal static let level333 = ImageAsset(name: "level333")
    internal static let level3Global = ImageAsset(name: "level3Global")
    internal static let level4Global = ImageAsset(name: "level4Global")
    internal static let level5Global = ImageAsset(name: "level5Global")
    internal static let level6Global = ImageAsset(name: "level6Global")
    internal static let level7Global = ImageAsset(name: "level7Global")
    internal static let level8Global = ImageAsset(name: "level8Global")
    internal static let level9Global = ImageAsset(name: "level9Global")
    internal static let backButtonIcon = ImageAsset(name: "backButtonIcon")
    internal static let backgroundIcon = ImageAsset(name: "backgroundIcon")
    internal static let candyIcon = ImageAsset(name: "candyIcon")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

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
