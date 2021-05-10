//
//
//  Created by Kevin Peng on 2021-05-10.
//

import Foundation
struct Q1079 {
    static let solution = Solution2.self
    static let function = solution.numTilePossibilities

    class Solution {
        func numTilePossibilities(_ tiles: String) -> Int {
            guard tiles.count > 1 else {
                return tiles.count
            }
            var dict = [Character: Int]()
            for c in tiles {
                dict[c, default: 0] += 1
            }
            var result = Set(tiles).count
            let tilesCount = tiles.count
            for i in 2 ... tiles.count {
                let repeats = dict.values.reduce(1.0) {
                    $0 * Double(factorial(min(i, $1)))
                }
                result += Int(ceil(Double(factorial(tilesCount)) / Double(factorial(tilesCount - i)) / repeats))
            }
            return result
        }

        func factorial(_ n: Int) -> Int {
            if n <= 1 {
                return 1
            }
            return factorial(n - 1) * n
        }
    }

    // https://leetcode.com/problems/letter-tile-possibilities/discuss/1159582/Better-than-95-solution-easy-solution
    class Solution2 {
        private var answer = 0

        private func permutate(_ array: inout [Character], _ index: Int) {
            answer += 1
            guard index != array.count else {
                return
            }
            var character = Set<Character>()
            for i in index ..< array.count {
                if !character.contains(array[i]) {
                    array.swapAt(index, i)
                    permutate(&array, index + 1)
                    array.swapAt(index, i)
                    character.insert(array[i])
                }
            }
        }

        func numTilePossibilities(_ tiles: String) -> Int {
            var tiles = Array(tiles)
            permutate(&tiles, 0)
            return answer - 1
        }
    }
}
