//
//  1342.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1342 {
  func numberOfSteps (_ num: Int) -> Int {
    var steps = 0
    var input = num
    while input > 0 {
      steps += 1
      
      if input % 2 == 0 {
        input /= 2
      } else {
        input -= 1
      }
    }
    return steps
  }
}
