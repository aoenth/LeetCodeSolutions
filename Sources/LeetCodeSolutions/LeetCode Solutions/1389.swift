//
//  1389.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1389 {
  func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var targetArray = [Int]()
    
    for i in 0 ..< nums.count {
      let index = index[i]
      let value = nums[i]
      targetArray.insert(value, at: index)
    }
    
    return targetArray
  }
}
