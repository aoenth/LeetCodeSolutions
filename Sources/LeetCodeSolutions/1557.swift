//
//
//  Created by Kevin Peng on 2021-05-15.
//

import Foundation

struct Q1557 {
    typealias Answer = Solution
    class Solution {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            let destinations = Set(edges.map { $0[1] })
            let origins = Set(edges.map{ $0[0] })
            return Array(origins.subtracting(destinations))
        }
    }
}
