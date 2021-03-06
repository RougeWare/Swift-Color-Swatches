//
//  NativeColor + NativeImage.swift
//  Swift Color Swatches
//
//  Created by Ben Leggiero on 2020-02-17.
//  Copyright © 2020 Ben Leggiero BH-1-PS
//

import Foundation
import CrossKitTypes
import RectangleTools
import CoreGraphics



public extension NativeColor {
    /// Generates a rectangular image which is entirely solidly this color
    ///
    /// - Parameter size:  _optional_ - The size of the swatch. Defaults to (1 × 1)
    func swatch(size: CGSize = CGSize(width: 1, height: 1)) -> NativeImage {
        return .swatch(color: self, size: size)
    }
}
