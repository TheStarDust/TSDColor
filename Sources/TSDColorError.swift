//
//  TSDColorError.swift
//  TSDColor
//
//  Created by Samuel Grau on 05/03/2017.
//
//

import Foundation

public enum TSDColorError: Error {
  case invalidHexadecimalStringRepresentation(hexString: String)
}
