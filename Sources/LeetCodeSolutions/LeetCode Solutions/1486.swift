//
//  1486.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1486 {
  func xorOperation(_ n: Int, _ start: Int) -> Int {
    (0 ..< n).reduce(0) { initial, next in
      initial ^ (next * 2 + start)
    }
  }
}
