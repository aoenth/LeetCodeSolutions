//
//  Created by Kevin Peng on 2021-05-08.
//

import XCTest
@testable import LeetCodeSolutions

class Test1817: XCTestCase {
    private let sut = Q1817.Solution().findingUsersActiveMinutes

    func test1() {
        let input = [[0,5],[1,2],[0,2],[0,5],[1,3]]
        let k = 5
        let result = sut(input, k)
        let expectation = [0,2,0,0,0]
        XCTAssertEqual(result, expectation)
    }

    func test2() {
        let input = [[1,1],[2,2],[2,3]]
        let k = 4
        let result = sut(input, k)
        let expectation = [1,1,0,0]
        XCTAssertEqual(result, expectation)
    }
}
