//
//  File.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import Foundation

func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    var topBottomSkyline = Array(repeating: 0, count: grid.count)
    var leftRightSkyline = Array(repeating: 0, count: grid[0].count)
    var maxTotalSum = 0
    for i in 0 ..< grid.count {
        for j in 0 ..< grid[0].count {
            if topBottomSkyline[j] < grid[i][j] {
                topBottomSkyline[j] = grid[i][j]
            }
            if leftRightSkyline[i] < grid[i][j] {
                leftRightSkyline[i] = grid[i][j]
            }
        }
    }
    for i in 0 ..< grid.count {
        for j in 0 ..< grid[0].count {
            maxTotalSum += min(leftRightSkyline[i], topBottomSkyline[j]) - grid[i][j]
        }
    }
    return maxTotalSum
}
