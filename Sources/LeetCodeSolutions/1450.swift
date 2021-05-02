//
//  1450.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-17.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

class Solution1450 {
  func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var busyStudents = 0
    for i in 0 ..< startTime.count {
      if startTime[i] <= queryTime && queryTime <= endTime[i] {
        busyStudents += 1
      }
    }
    return busyStudents
  }
}
