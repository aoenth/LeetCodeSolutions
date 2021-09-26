//
//  1295.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1295 {
  func findNumbers(_ nums: [Int]) -> Int {
    var evens = 0
    for n in nums {
      if numberOfDigits(n) % 2 == 0 {
        evens += 1
      }
    }
    return evens
  }
  
  func numberOfDigits(_ num: Int) -> Int {
    var n = 1
    var num = num
    if ( num >= 100000000 ) { n += 8; num /= 100000000; }
    if ( num >= 10000     ) { n += 4; num /= 10000; }
    if ( num >= 100       ) { n += 2; num /= 100; }
    if ( num >= 10        ) { n += 1; num /= 10; }
    return n
  }
  
  func numberOfDigits2(_ num: Int) -> Int {
    return String(num).count
  }
}

