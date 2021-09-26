//
//  1409.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import Foundation
class Solution1409 {
    func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
        var p = Array(stride(from: m, through: 1, by: -1))
        var result = [Int](repeating: 0, count: queries.count)
        for i in 0 ..< queries.count {
            let currentQuery = queries[i]
            let actualIndex = p.firstIndex(of: currentQuery)!
            let index = m - actualIndex - 1
            result[i] = index
            p.remove(at: actualIndex)
            p.append(currentQuery)
        }
        return result
    }
}
