//
//  NativeImage + NativeColor.swift
//  Swift Color Swatches
//
//  Created by Ben Leggiero on 2020-02-17.
//  Copyright © 2020 Ben Leggiero BH-1-PS
//

import Foundation
import CoreGraphics
import CrossKitTypes
import RectangleTools
import DrawingTools
#if canImport(UIKit)
import UIKit
#endif



public extension NativeImage {
    
    /// Generates a rectangular image which is entirely solidly the given color
    ///
    /// - Parameters:
    ///   - color: The color of the swatch
    ///   - size:  _optional_ - The size of the swatch. Defaults to (1 × 1)
    static func swatch(color: NativeColor, size: CGSize = .one) -> NativeImage {
        drawNew(size: size, context: .goodForSwatch(size: size)) { context in
            guard let context = context else {
                assertionFailure("No context?")
                return
            }
            context.setFillColor(color.cgColor)
            context.fill(CGRect(origin: .zero, size: size))
        }
    }
    
    
    /// Generates a blank (transparent) image of the given size
    ///
    /// - Parameter size: _optional_ - The size of the resulting image. Defaults to (1 × 1)
    /// - Returns: A clear/transparent/blank image
    static func blank(size: CGSize = .one) -> NativeImage {
        self.swatch(color: .clear, size: size)
    }
    
    
    /// Generates a blank (transparent) 1 × 1 image
    static var blank: NativeImage { .blank() }
}
