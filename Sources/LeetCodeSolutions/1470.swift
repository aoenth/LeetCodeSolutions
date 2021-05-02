//
//  1470.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1470 {
  func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    /*
     Time: O(nums/n)
     Memory: O(2 nums + 2 nums)
     put first n numbers from A in to r
     put first n numbers from B in to r, nums.count/2..<that
     put n numbers from A in to r starting at i = n
     put n numbers from B in to r starting at i = n
     put n numbers from A in to r starting at i = 2n
     put n numbers from B in to r starting at i = 2n
     put n numbers from A in to r starting at i = 3n
     put n numbers from B in to r starting at i = 3n
     0,1,2,3,4,10,11,12,13,14
     5,6,7,8,9,15,16,17,18,19
     */
    var result = [Int](repeating: 0, count: nums.count)
    print(nums)
    for i in 0 ..< nums.count / 2 {
      guard i % (2 * n) < n else {
        continue
      }
      result[i] = nums[i]
      result[i + n] = nums[nums.count / 2 + i]
      print("i", i)
      print("result[\(i)]", result[i])
      print("nums[\(i)]", nums[i])
      print("result[\(i + n)]", result[i + n])
      print("nums[\(nums.count / 2 + i)]", nums.count / 2 + i)
      print("result", result)
    }
    return result
  }
}
