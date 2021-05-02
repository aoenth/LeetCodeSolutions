//
//  0709.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-16.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution0709 {
  func toLowerCase(_ str: String) -> String {
    let characterSequence: [Character] = str.unicodeScalars.map {
      let unicodeScalarValue: UInt32
      if 65 ... 90 ~= $0.value {
        unicodeScalarValue = $0.value + 32
      } else {
        unicodeScalarValue = $0.value
      }
      guard let unicodeScalar = UnicodeScalar(unicodeScalarValue) else {
        fatalError("Not a valid character")
      }
      return Character(UnicodeScalar(unicodeScalar))
    }
    
    return String(characterSequence)
  }
}
