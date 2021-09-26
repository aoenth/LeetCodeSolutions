//
//  0771.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution0771 {
  func numJewelsInStones(_ J: String, _ S: String) -> Int {
    let gems = Set(J)
    var numberOfGems = 0
    for stone in S {
      if gems.contains(stone) {
        numberOfGems += 1
      }
    }
    return numberOfGems
  }
}
