import UIKit


/// A color representation useful for simple gradients
public struct TSDGradientColor {
  public private(set) var startColor: UIColor
  public private(set) var endColor: UIColor
  public private(set) var name: String

  public init(startColor: UIColor, endColor: UIColor, name: String) {
    self.startColor = startColor
    self.endColor = endColor
    self.name = name
  }
}
