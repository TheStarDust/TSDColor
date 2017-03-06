import UIKit


/// A color representation useful for simple gradients
public struct TSDGradientColor {
  var startColor: UIColor
  var endColor: UIColor
  var name: String

  public init(startColor: UIColor, endColor: UIColor, name: String) {
    self.startColor = startColor
    self.endColor = endColor
    self.name = name
  }
}
