//
//  Created by Kevin Peng on 2021-05-23.
//

import Foundation
struct Q1347 {
    typealias Answer = Solution

    //236ms, 16MB
    class Solution {
        func minSteps(_ s: String, _ t: String) -> Int {
            let stringA = Array(s)
            let stringB = Array(t)
            var lhs = [Int](repeating: 0, count: 26)
            var rhs = [Int](repeating: 0, count: 26)
            var commons = 0
            let start = Character("a").asciiValue!
            for i in 0 ..< s.count {
                lhs[Int(stringA[i].asciiValue! - start)] += 1
                rhs[Int(stringB[i].asciiValue! - start)] += 1
            }
            for i in 0 ..< 26 {
                if lhs[i] > 0 && rhs[i] > 0 {
                    commons += min(lhs[i], rhs[i])
                }
            }
            return s.count - commons
        }
    }
}
