//
//  Created by Kevin Peng on 2021-05-08.
//

import Foundation

struct Q1817 {
    class Solution {
        func findingUsersActiveMinutes(_ logs: [[Int]], _ k: Int) -> [Int] {
            // user: mins
            var tally = [Int: Set<Int>]()
            var result = [Int](repeating: 0, count: k)
            for action in logs {
                tally[action[0], default: []].insert(action[1])
            }
            for (_, value) in tally {
                result[value.count - 1] += 1
            }
            return result
        }
    }
}
