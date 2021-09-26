//
//  1313.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1313 {//72ms, 21.3MB
  func decompressRLElist(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    for i in 0 ..< nums.count / 2 {
      let count = nums[i * 2]
      let value = nums[i * 2 + 1]
      
      for _ in 0 ..< count {
        result.append(value)
      }
    }
    
    return result
  }
}

class Solution1313b {
  func decompressRLElist(_ nums: [Int]) -> [Int] {
    let length = nums.enumerated().reduce(0) { initial, next in
      if next.offset % 2 == 0 {
        return initial + next.element
      } else {
        return initial
      }
    }
    var array = [Int](repeating: 0, count: length)
    var currentIndex = 0
    for i in 0 ..< nums.count / 2 {
      let count = nums[i * 2]
      let value = nums[i * 2 + 1]
      array[currentIndex] += value
      if currentIndex + count < array.endIndex {
        array[currentIndex + count] -= value
      }
      currentIndex += count
    }
    
    for i in 0 ..< array.count - 1 {
      array[i + 1] += array[i]
    }
    return array
  }
}
