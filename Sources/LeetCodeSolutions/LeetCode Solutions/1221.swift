//
//  1221.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1221 {
  func balancedStringSplit(_ s: String) -> Int {
    var splits = 0
    var accumulatedL = 0
    var accumulatedR = 0
    
    for c in s {
      if c == "L" {
        accumulatedL += 1
      } else {
        accumulatedR += 1
      }
      
      
      if accumulatedL == accumulatedR {
        splits += 1
        accumulatedL = 0
        accumulatedR = 0
      }
    }
    
    return splits
  }
}
