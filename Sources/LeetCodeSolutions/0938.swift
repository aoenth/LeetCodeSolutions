//
//  0938.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution0938 {
  
  func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    var sum = 0
    helper(root, L, R, &sum)
    return sum
  }
  
  private func helper(_ root: TreeNode?, _ L: Int, _ R: Int, _ sum: inout Int) {
    guard let root = root else {
      return
    }
    if (L ... R) ~= root.val {
      sum += root.val
    }
    if root.val > L {
      helper(root.left, L, R, &sum)
    }
    if root.val < R {
      helper(root.right, L, R, &sum)
    }
  }
}
