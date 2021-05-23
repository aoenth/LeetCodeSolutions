//
//  Created by Kevin Peng on 2021-05-23.
//

import Foundation
struct Q1347 {
    typealias Answer = SolutionD

    // O(N) time (280ms), O(1) space (14.9MB)
    // time = N + 26
    // space = 26 * 2 + 1 (start) + 1 (common)
    class Solution {
        func minSteps(_ s: String, _ t: String) -> Int {
            var lhs = [Int](repeating: 0, count: 26)
            var rhs = [Int](repeating: 0, count: 26)
            var commons = 0
            let start = Character("a").asciiValue!
            for (sc, tc) in zip(s, t) {
                lhs[Int(sc.asciiValue! - start)] += 1
                rhs[Int(tc.asciiValue! - start)] += 1
            }
            for i in 0 ..< 26 {
                if lhs[i] > 0 && rhs[i] > 0 {
                    commons += min(lhs[i], rhs[i])
                }
            }
            return s.count - commons
        }
    }

    class SolutionB {
        func minSteps(_ s: String, _ t: String) -> Int {
            var dict = [Character: [Int]]()
            for (sc, tc) in zip(s, t) {
                dict[sc, default: [0, 0]][0] += 1
                dict[tc, default: [0, 0]][1] += 1
            }
            return dict.values.reduce(s.count) {
                $0 - min($1[0], $1[1])
            }
        }
    }

    // Fastest by run time
    class SolutionC {
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

    class SolutionD {
        func minSteps(_ s: String, _ t: String) -> Int {
            var dictA = [Character: Int]()
            var dictB = [Character: Int]()
            for (sc, tc) in zip(s, t) {
                dictA[sc, default: 0] += 1
                dictB[tc, default: 0] += 1
            }
            var result = s.count
            for (key, value) in dictA {
                result -= min(value, dictB[key] ?? 0)
            }
            return result
        }
    }
}
