//
//  Created by Kevin Peng on 2021-05-09.
//

import XCTest
@testable import LeetCodeSolutions

class Test1605: XCTestCase {
    private let sut = Q1605.Solution().restoreMatrix
    func test1() {
        let result = sut([1,0], [0,1])
        let expectation = [[0,1],
                           [0,0]]
        XCTAssertEqual(result, expectation)
    }

    func test2() {
        let result = sut([1,0], [1,0])
        let expectation = [[1,0],
                           [0,0]]
        XCTAssertEqual(result, expectation)
    }

    func test3() {
        let result = sut([3,8], [4,7])
        let expectation = [[3,0],
                           [1,7]]
        XCTAssertEqual(result, expectation)
    }

    func test4() {
        let result = sumRowCol(sut([5,7,10], [8,6,8]))
        let expectation = [[5,7,10], [8,6,8]]
        XCTAssertEqual(result, expectation)
    }

    func sumRowCol(_ answer: [[Int]]) -> [[Int]] {
        var rowSum = [Int]()
        var colSum = [Int]()
        for r in answer {
            var currentRowSum = 0
            for c in r {
                currentRowSum += c
            }
            rowSum.append(currentRowSum)
        }
        for c in 0 ..< answer[0].count {
            var currentColSum = 0
            for r in 0 ..< answer.count {
                currentColSum += answer[r][c]
            }
            colSum.append(currentColSum)
        }
        return [rowSum, colSum]
    }
}
