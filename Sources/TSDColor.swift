import UIKit

extension UIColor {
  convenience init(r: Float, g: Float, b: Float) {
    self.init(colorLiteralRed: r/255, green: g/255, blue: b/255, alpha: 1.0)
  }
  convenience init(r: Float, g: Float, b: Float, a: Float) {
    self.init(colorLiteralRed: r/255, green: g/255, blue: b/255, alpha: a)
  }

  static func hexStr (_ hexStr: String, alpha: CGFloat) -> UIColor {
    var hexStr = hexStr
    let a: Float = Float(alpha)
    hexStr = hexStr.replacingOccurrences(of: "#", with: "")
    let scanner = Scanner(string: hexStr as String)
    var color: UInt32 = 0
    if scanner.scanHexInt32(&color) {
      let r = Float((color & 0xFF0000) >> 16)
      let g = Float((color & 0x00FF00) >> 8)
      let b = Float(color & 0x0000FF)
      return UIColor(r: r, g: g, b: b, a: a)

    } else {
      debugPrint("invalid hex string format")
      return UIColor.white
    }
  }
}

