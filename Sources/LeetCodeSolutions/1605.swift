//
//  Created by Kevin Peng on 2021-05-08.
//

import Foundation

struct Q1605 {
    static let answer = Solution().restoreMatrix
    /// My original solution
    class Solution {
        func restoreMatrix(_ rowSum: [Int], _ colSum: [Int]) -> [[Int]] {
            var result = [[Int]](
                repeating: [Int](
                    repeating: 0,
                    count: colSum.count
                ),
                count: rowSum.count
            )
            var pendingToAdd = [[Int]]()
            for r in 0 ..< rowSum.count {
                pendingToAdd.append([r, rowSum[r]])
            }
            var currentColSum = [Int](repeating: 0, count: colSum.count)
            for pending in pendingToAdd {
                let rowToAdd = pending[0]
                var valueToAdd = pending[1]
                for c in 0 ..< colSum.count {
                    var rowToSearch = rowToAdd
                    while valueToAdd > 0 && currentColSum[c] < colSum[c] {
                        if rowToSearch >= rowSum.count {
                            rowToSearch = 0
                        }
                        let valueCanBeAdded = colSum[c] - currentColSum[c] - result[rowToSearch][c]
                        let valueShouldBeAdded = min(valueToAdd, valueCanBeAdded)
                        if valueCanBeAdded > 0 {
                            result[rowToSearch][c] += valueShouldBeAdded
                        }
                        currentColSum[c] += valueShouldBeAdded
                        valueToAdd -= valueShouldBeAdded
                        rowToSearch += 1
                    }
                }
            }
            return result
        }
    }
}
