//
//  1281.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1281 {
  func subtractProductAndSum(_ n: Int) -> Int {
    var sumOfDigits = 0
    var productOfDigits = 1
    var runningNumber = n
    while runningNumber > 0 {
      let digit = runningNumber % 10
      sumOfDigits += digit
      productOfDigits *= digit
      
      runningNumber /= 10
    }
    return productOfDigits - sumOfDigits
  }
}
