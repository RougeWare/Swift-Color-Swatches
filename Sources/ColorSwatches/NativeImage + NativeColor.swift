//
//  NativeImage + NativeColor.swift
//  
//
//  Created by Ben Leggiero on 2020-02-17.
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
    static func swatch(color: NativeColor, size: CGSize = CGSize(width: 1, height: 1)) -> NativeImage {
        NativeImage(size: size).inCurrentGraphicsContext { swatch, context in
            guard let context = context else { return swatch }
            context.setFillColor(color.cgColor)
            context.fill(CGRect(origin: .zero, size: swatch.size))
            #if canImport(UIKit)
            return UIGraphicsGetImageFromCurrentImageContext() ?? swatch
            #else
            return swatch
            #endif
        }
    }
    
    
    /// Generates a blank (transparent) image of the given size
    ///
    /// - Parameter size: _optional_ - The size of the resulting image. Defaults to (1 × 1)
    /// - Returns: A clear/transparent/blank image
    static func blank(size: CGSize = CGSize(width: 1, height: 1)) -> NativeImage {
        self.swatch(color: .clear, size: size)
    }
}
