//
//  1365.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution1365 {
  func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    let sorted = nums.sorted()
    
    return nums.map {
      sorted.firstIndex(of: $0)!
    }
  }
}
