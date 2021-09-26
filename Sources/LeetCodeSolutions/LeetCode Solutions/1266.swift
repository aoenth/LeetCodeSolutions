//
//  1266.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-15.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation
class Solution1266 {
  func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
    
    var seconds = 0
    for i in 0 ..< points.count - 1 {
      seconds += minTime(from: points[i], to: points[i + 1])
    }
    return seconds
  }
  
  func minTime(from pointA: [Int], to pointB: [Int]) -> Int {
    let dim = pointA.count
    
    guard dim > 0 else {
      fatalError("Empty array")
    }
    
    guard pointB.count == dim else {
      fatalError("Input not the same")
    }
    
    var diff = [Int](repeating: 0, count: dim)
    
    for i in 0 ..< dim {
      diff[i] = abs(pointA[i] - pointB[i])
    }
    
    return diff.max()!
  }
}
