//
//  File.swift
//  
//
//  Created by Kevin Peng on 2021-05-22.
//

import Foundation
struct Q0950 {
    typealias Answer = Solution2
    //160ms
    class Solution {
        func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
            let deckSize = deck.count
            let sortedArray = deck.sorted()
            var result = [Int](repeating: 0, count: deckSize)
            var currentIndex = 0
            for i in stride(from: 0, to: deckSize, by: 2) {
                result[i] = sortedArray[currentIndex]
                currentIndex += 1
            }

            var oddIndices = Array(stride(from: 1, to: deckSize, by: 2))
            var index = deckSize % 2 == 0 ? 0 : 1
            while currentIndex < deckSize {
                let emptySlots = oddIndices.count
                var indicesToRemove = [Int]()
                while index < emptySlots {
                    result[oddIndices[index]] = sortedArray[currentIndex]
                    indicesToRemove.append(oddIndices[index])
                    currentIndex += 1
                    index += 2
                }
                for removable in indicesToRemove {
                    oddIndices.removeAll { $0 == removable }
                }
                index = index == emptySlots ? 0 : 1
            }
            return result
        }
    }

    //32ms
    class Solution2 {
        func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
            let deckSize = deck.count
            let sortedArray = deck.sorted()
            var result = [Int](repeating: 0, count: deckSize)
            var currentIndex = 0
            for i in stride(from: 0, to: deckSize, by: 2) {
                result[i] = sortedArray[currentIndex]
                currentIndex += 1
            }

            var oddIndices = Array(stride(from: 1, to: deckSize, by: 2))
            var index = deckSize % 2 == 0 ? 0 : 1
            while oddIndices.isEmpty == false {
                if index >= oddIndices.count {
                    index -= oddIndices.count
                }
                result[oddIndices[index]] = sortedArray[currentIndex]
                currentIndex += 1
                oddIndices.remove(at: index)
                if oddIndices.count > 1 {
                    index += 1
                }
            }
            return result
        }
    }
}
