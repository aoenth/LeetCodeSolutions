//
//
//  Created by Kevin Peng on 2021-05-15.
//

import Foundation

struct Q1557 {
    typealias Answer = Solution3
    // 10s
    class Solution {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            let destinations = Set(edges.map { $0[1] })
            let origins = Set(edges.map{ $0[0] })
            return Array(origins.subtracting(destinations))
        }
    }

    // 5s
    class Solution2 {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            var indegree = [Bool](repeating: false, count: n)
            for edgeArray in edges {
                if indegree[edgeArray[1]] == false {
                    indegree[edgeArray[1]] = true
                }
            }
            var result = [Int]()
            for index in 0 ..< indegree.count {
                if indegree[index] == false {
                    result.append(index)
                }
            }
            return result
        }
    }

    /// 7s
    class Solution3 {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            var nodes = Set<Int>(0 ..< n)
            for edgeArray in edges {
                nodes.remove(edgeArray[1])
            }
            return Array(nodes)
        }
    }

    // 10s
    class Solution4 {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            let graph = buildGraph(edges)

            var result = Set<Int>()
            var isVisited = [Bool](repeating: false, count: n)

            for i in 0..<n {
                if isVisited[i] { continue }
                result.insert(i)
                dfs(i, graph, &isVisited, &result)
            }
            return Array(result)
        }

        private func dfs(_ node: Int, _ graph: [Int: Set<Int>], _ isVisited: inout [Bool], _ result: inout Set<Int>) {
            if isVisited[node] {
                if result.contains(node) {
                    result.remove(node)
                }
                return
            }
            isVisited[node] = true
            guard let children = graph[node] else { return }

            for nei in children {
                dfs(nei, graph, &isVisited, &result)
            }
        }

        private func buildGraph(_ edges: [[Int]]) -> [Int: Set<Int>] {
            var graph = [Int: Set<Int>]()
            for edge in edges {
                graph[edge[0], default: Set<Int>()].insert(edge[1])
            }
            return graph
        }
    }

    //11s
    class Solution5 {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {

            let checkMassive = Set(edges.compactMap{ $0[1] })

            let massiveFiltered = edges.filter{checkMassive.contains( $0[0] ) == false}

            return Array(Set(massiveFiltered.compactMap{ $0[0] }))
        }

    }
}
