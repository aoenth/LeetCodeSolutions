//
//  1252.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-16.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution1252 {
  var evenCount = 0
  var oddCount = 0
  
  func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
    var map = Array(repeating: [Bool](repeating: false, count: m), count: n)
    evenCount = n * m
    
    for indexPair in indices {
      let coordinate = (indexPair[0], indexPair[1])
      toggleEvenOdd(coordinate: coordinate, input: &map)
    }
    
    return oddCount
  }
  
  func toggleEvenOdd(coordinate: (i: Int, j: Int), input: inout [[Bool]]) {
    for i in 0 ..< input.count {
      toggle(coordinate: (i, coordinate.j), input: &input)
    }
    for j in 0 ..< input[0].count {
      toggle(coordinate: (coordinate.i, j), input: &input)
    }
  }
  
  func toggle(coordinate: (i: Int, j: Int), input: inout [[Bool]]) {
    let isOdd = input[coordinate.i][coordinate.j]
    if isOdd {
      evenCount += 1
      oddCount -= 1
    } else {
      evenCount -= 1
      oddCount += 1
    }
    input[coordinate.i][coordinate.j].toggle()
  }
}
