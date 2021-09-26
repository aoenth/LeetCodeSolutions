//
//  Created by Kevin Peng on 2021-05-09.
//

import Foundation

struct Q0763 {
    class Solution {
        func partitionLabels2(_ S: String) -> [Int] {
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

        /**
         Suggested "Greedy approach" from LeetCode
         */
        func partitionLabels(_ S: String) -> [Int] {
            let input = Array(S)
            var lastIndices = [Character: Int]()
            for character in input {
                lastIndices[character] = input.lastIndex(of: character)!
            }
            var result = [Int]()
            var currentIndex = 0
            var anchor = 0
            for i in 0 ..< input.count {
                let currentCharacter = input[i]
                currentIndex = max(currentIndex, lastIndices[currentCharacter]!)
                if i == currentIndex {
                    result.append(i - anchor + 1)
                    anchor = i + 1
                }
            }
            return result
        }
    }
}
