//
//  NativeColor + NativeImage.swift
//  
//
//  Created by Ben Leggiero on 2020-02-17.
//

import Foundation
import CrossKitTypes
import RectangleTools



public extension NativeColor {
    /// Generates a rectangular image which is entirely solidly this color
    ///
    /// - Parameter size:  _optional_ - The size of the swatch. Defaults to (1 × 1)
    func swatch(size: UIntSize = UIntSize(width: 1, height: 1)) -> NativeImage {
        return .swatch(color: self, size: size)
    }
}
