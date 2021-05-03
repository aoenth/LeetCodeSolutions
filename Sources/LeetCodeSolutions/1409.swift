//
//  1409.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import Foundation
class Solution1409 {
    func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
        var p = Array(1...m)
        var result = [Int](repeating: 0, count: queries.count)
        for i in 0 ..< queries.count {
            let currentQuery = queries[i]
            let index = p.firstIndex(of: currentQuery)!
            result[i] = index
            p.remove(at: index)
            p.insert(currentQuery, at: 0)
        }
        return result
    }
}
