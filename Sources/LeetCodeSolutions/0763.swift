//
//  Created by Kevin Peng on 2021-05-09.
//

import Foundation

struct Q0763 {
    class Solution {
        func partitionLabels(_ S: String) -> [Int] {
            let input = Array(S)
            if S.count == 1 {
                return [1]
            }
            var result = [Int]()
            var startIndex = 0
            var currentIndex = 1
            while currentIndex < input.count {
                let lhs = Set(input[startIndex ..< currentIndex])
                let rhs = Set(input[currentIndex ..< input.count])
                let intersection = lhs.intersection(rhs)
                if let firstIntersection = intersection.first {
                    currentIndex = input.lastIndex(of: firstIntersection)! + 1
                } else {
                    result.append(currentIndex - startIndex)
                    startIndex = currentIndex
                    currentIndex += 1
                }
            }
            result.append(currentIndex - startIndex)
            return result
        }
    }
}
