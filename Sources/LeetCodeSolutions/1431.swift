//
//  1431.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1431 {
  func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let indexOfMax = findMax(candies)
    let maxCandies = candies[indexOfMax]
    return candies.map { candyAmount in
      return candyAmount + extraCandies >= maxCandies
    }
  }
  
  /**
   returns the index of the first max value in the array
   */
  private func findMax(_ array: [Int]) -> Int {
    var currentMax = Int.min
    var indexOfMax = 0
    for (index, value) in array.enumerated() {
      if value > currentMax {
        currentMax = value
        indexOfMax = index
      }
    }
    return indexOfMax
  }
}
