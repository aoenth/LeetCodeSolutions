//
//  Created by Kevin Peng on 2021-05-08.
//

import Foundation


/*
 Test cases:
 [[1,2],[3],[3],[]]
 [[4,3,1],[3,2,4],[3],[4],[]]
 [[1],[]]
 [[1,2,3],[2],[3],[]]
 [[1,3],[2],[3],[]]

 Expected:
 [[0,1,3],[0,2,3]]
 [[0,4],[0,3,4],[0,1,3,4],[0,1,2,3,4],[0,1,4]]
 [[0,1]]
 [[0,1,2,3],[0,2,3],[0,3]]
 [[0,1,2,3],[0,3]]
 */
struct Q0797 {
    class Solution {
        func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
            findPath(graph, 0)
        }

        func findPath(_ graph: [[Int]], _ currentIndex: Int) -> [[Int]] {
            if currentIndex == graph.count - 1 {
                return [[currentIndex]]
            } else if graph[currentIndex].isEmpty {
                return []
            }

            var result = [[Int]]()

            for vertex in graph[currentIndex] {
                let paths = findPath(graph, vertex)
                if !paths.isEmpty {
                    result += paths.map { [currentIndex] + $0 }
                }
            }
            return result
        }
    }
}
