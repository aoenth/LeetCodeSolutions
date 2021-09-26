//
//  1480.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution1480 {
  func runningSum(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: nums.count)
    result[0] = nums[0]
    /*
    [element0,
    element0+element1,
    element0+element1+element2
    element0+element1+element2+element3]
    */
    for i in 1 ..< nums.count {
      result[i] = nums[i] + result[i - 1]
    }
    return result
  }
}
