//
//  Test0643.swift
//  
//
//  Created by Kevin Peng on 2021-06-28.
//

import XCTest
@testable import LeetCodeSolutions

class Test0643: XCTestCase {
    let sut = Q0643.Solution().findMaxAverage

    func test1() {
        let expected = 12.75
        let result = sut([1,12,-5,-6,50,3], 4)
        XCTAssertEqual(expected, result)
    }
}
