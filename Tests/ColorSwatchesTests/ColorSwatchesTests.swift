import XCTest
import CrossKitTypes
import RectangleTools
import SwiftImage
@testable import ColorSwatches



final class ColorSwatchesTests: XCTestCase {
    
    func testSimple() {
        let color = NativeColor(red: 50/255, green: 80.0/255, blue: 130.0/255, alpha: 1)
        let size = CGSize(width: 5, height: 5)
        let image = NativeImage.swatch(color: color, size: size)
        #if canImport(UIKit)
            let inspectableImage = SwiftImage.Image<RGBA<UInt8>>(uiImage: image)
        #elseif canImport(AppKit)
            let inspectableImage = SwiftImage.Image<RGBA<UInt8>>(nsImage: image)
        #else
            #error("Only UIKit and AppKit are testable so far")
        #endif
        
        var pixelCount = 0
        
        inspectableImage.forEach { pixel in
            pixelCount += 1
            print(pixel)
            XCTAssertEqual(pixel.red, 50)
            XCTAssertEqual(pixel.green, 80)
            XCTAssertEqual(pixel.blue, 130)
            XCTAssertEqual(pixel.alpha, .max)
        }
    }
    
    
    static var allTests = [
        ("testSimple", testSimple),
    ]
}
