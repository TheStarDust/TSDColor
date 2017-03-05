//
//  UIColor+TSD.swift
//  TSDColor
//
//  Created by Samuel Grau on 05/03/2017.
//

import UIKit
import Foundation

extension UIColor {

  /// Initialize a color with the (r, g, b) components in the interval [0..255]
  ///
  /// - Parameters:
  ///   - r: the red component of the color r in [0..255]
  ///   - g: the green component of the color g in [0..255]
  ///   - b: the blue component of the color b in [0..255]
  convenience init(r: Float, g: Float, b: Float) {
    self.init(colorLiteralRed: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
  }

  /// Initialize a color with the (r, g, b) components in the interval [0..255]
  /// and the alpha component in [0..1] where `1` fully opaque and `0` is transparent
  ///
  /// - Parameters:
  ///   - r: the red component of the color r in [0..255]
  ///   - g: the green component of the color g in [0..255]
  ///   - b: the blue component of the color b in [0..255]
  ///   - a: the alpha component of the color b in [0..1]
  convenience init(r: Float, g: Float, b: Float, a: Float) {
    self.init(colorLiteralRed: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
  }


  /// A static function that return a `UIColor` object given an hexadecimal string 
  /// representation of the color
  ///
  /// - Parameters:
  ///   - hexStr: the hex string (e.g. #FF00AA)
  ///   - alpha: the alpha value in [0..1] where `1` fully opaque and `0` is transparent
  /// - Returns: returns the color
  static func hexStr(_ hexStr: String, alpha: CGFloat) throws -> UIColor {
    var hexStr = hexStr
    let a: Float = Float(alpha)
    hexStr = hexStr.replacingOccurrences(of: "#", with: "")
    let scanner = Scanner(string: hexStr as String)
    var color: UInt32 = 0
    guard scanner.scanHexInt32(&color) else {
      throw TSDColorError.invalidHexadecimalStringRepresentation(hexString: hexStr)
    }

    let r = Float((color & 0xFF0000) >> 16)
    let g = Float((color & 0x00FF00) >> 8)
    let b = Float(color & 0x0000FF)
    return UIColor(r: r, g: g, b: b, a: a)
  }
}
