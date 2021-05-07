[![](https://www.codefactor.io/repository/github/rougeware/swift-color-swatches/badge)](https://www.codefactor.io/repository/github/rougeware/swift-color-swatches) [![Swift 5](https://img.shields.io/badge/swift-5-27CD41.svg?logo=swift&logoColor=white)](https://swift.org) [![swift package manager 5.3 is supported](https://img.shields.io/badge/swift%20package%20manager-5.3-27CD41.svg)](https://swift.org/package-manager) [![Requires macOS 10.15+, OS 13+, tvOS 13+, watchOS 6+](https://img.shields.io/badge/platform-macOS%2010.15+%20%7C%20iOS%2013+%20%7C%20tvOS%2013+%20%7C%20watchOS%206+-ECEFF1.svg)](./Package.swift) [![](https://img.shields.io/github/release-date/rougeware/swift-color-swatches?label=latest%20release)](https://github.com/RougeWare/Swift-Color-Swatches/releases/latest)


# Swift Color Swatches #

# ![](Decoration.png)

A simple Swift package - all it does is draw rectangles of solid colors as `NSImage`s and `UIImage`s.

You can simply use `.swatch` on a native image:

```swift
import AppKit
import ColorSwatches

NSImage.swatch(color: .systemPurple)
```


Or `.swatch` on a native color:

```swift
import UIKit
import ColorSwatches

UIColor.systemPurple.swatch()
```
