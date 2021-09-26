//
//  1512.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1512 {
  var bag = [Int: Int]()
  func numIdenticalPairs(_ nums: [Int]) -> Int {
    /*
     n = 6
     5 + 4 + 3 + 2 + 1 = 15
     Time: O(n(n-1)/2)
     Memory: O(1)
     
     1-2
     1-3
     1-1 v
     1-1 v
     1-3
     
     2-3
     2-1
     2-1
     2-3
     
     3-1 v
     3-1 v
     3-3 v
     
     1-1 v
     1-3
     
     1-3
     */
    
    /*
     Time: O(n)
     Memory O(2n)
     
     []
     1
     [1:1]
     2
     [1:1, 2:1]
     3
     [1:1, 2:1, 3:1]
     1
     [1:2, 2:1, 3:1]
     1 +
     [1:3, 2:1, 3:1]
     3
     [1:3, 2:1, 3:2]
     
     
     3 -> 3
     3! = 6 * 3 * 2 = 36 / 2 = 18
     4 -> 6
     5 -> 10
     */
    var bag = [Int: Int]()
    
    for n in nums {
      bag[n, default: 0] += 1
    }
    
    let result = bag.reduce(0) { initial, result in
      return initial + nChoose2(result.value)
    }
    
    return result
  }
  
  private func nChoose2(_ num: Int) -> Int {
    return num * (num - 1) / 2
  }
  
  
}
