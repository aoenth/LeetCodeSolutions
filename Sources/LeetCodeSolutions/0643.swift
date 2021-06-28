//
//  0643.swift
//  
//
//  Created by Kevin Peng on 2021-06-28.
//

import Foundation

struct Q0643 {
    class Solution {
        func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
            var currentSum = (0 ..< k).reduce(0) { current, next in
                current + nums[next]
            }
            var maxSum = currentSum
            print(maxSum)
            for i in k ..< nums.count {
                currentSum = currentSum - nums[i - k] + nums[i]
                print(currentSum)
                if currentSum > maxSum {
                    maxSum = currentSum
                }
            }
            return Double(maxSum) / Double(k)
        }
    }
}
