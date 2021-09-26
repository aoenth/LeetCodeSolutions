//
//  Created by Kevin Peng on 2021-05-09.
//

import XCTest
@testable import LeetCodeSolutions

class Test0763: XCTestCase {
    private let sut = Q0763.Solution().partitionLabels

    func test1() {
        let result = sut("ababcbacadefegdehijhklij")
        XCTAssertEqual(result, [9,7,8])
    }

    func test2() {
        let result = sut("a")
        XCTAssertEqual(result, [1])
    }

    func test3() {
        let result = sut("abc")
        XCTAssertEqual(result, [1,1,1])
    }

    func test4() {
        let result = sut("abac")
        XCTAssertEqual(result, [3,1])
    }

    func test5() {
        let result = sut("abb")
        XCTAssertEqual(result, [1,2])
    }
}
