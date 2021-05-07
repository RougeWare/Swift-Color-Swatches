
# Swift Color Swatches #

<center>
# ![](Decoration.png)
</center>

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
