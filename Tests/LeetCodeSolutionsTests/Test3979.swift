//
//  Test3979.swift
//  Test3979
//
//  Created by Kevin Peng on 2021-09-18.
//

import XCTest
@testable import LeetCodeSolutions

class Test3979: XCTestCase {
    private let sut = Q3979.Solution().addOperators

    func test1() {
        let result = Set(sut("123", 6))

        let expectation: Set<String> = [
            "1*2*3",
            "1+2+3"
        ]

        XCTAssertEqual(result, expectation)
    }
}
