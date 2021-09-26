//
//  Created by Kevin Peng on 2021-05-15.
//

import XCTest
@testable import LeetCodeSolutions

final class Test1557: XCTestCase {
    let sut = Q1557.Answer().findSmallestSetOfVertices
    func test1() {
        let result = sut(6, [[0,1],[0,2],[2,5],[3,4],[4,2]])
        let expected = [0,3]
        XCTAssertEqual(Set(result), Set(expected))
    }

    func test2() {
        let result = sut(5, [[0,1],[2,1],[3,1],[1,4],[2,4]])
        let expected = [0,2,3]
        XCTAssertEqual(Set(result), Set(expected))
    }

    func testPerformance() {
        XCTAssertRunTimeLessThan(5000) {
            for _ in 0 ..< 1000000 {
                _ = sut(5, [[0,1],[2,1],[3,1],[1,4],[2,4]])
            }
        }
    }
}
