//
//  0007.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution0007 {
  func reverse(_ x: Int) -> Int {
    typealias Input = Int32
    guard x < Input.max else {
      return 0
    }
    var result: Input = 0
    var runningX: Input = abs(Input(x))
    let isNegative = x < 0
    
    while runningX > 0 {
      let digit: Input = runningX % 10
      
      let (product, multiplicativeOverflow) =
        result.multipliedReportingOverflow(by: 10)
      
      guard multiplicativeOverflow == false else {
        return 0
      }
      
      let (sum, additiveOverflow) = product.addingReportingOverflow(digit)
      
      guard additiveOverflow == false else {
        return 0
      }
      
      result = sum
      
      runningX /= 10
    }
    
    if isNegative {
      return Int(-result)
    } else {
      return Int(result)
    }
  }
}
