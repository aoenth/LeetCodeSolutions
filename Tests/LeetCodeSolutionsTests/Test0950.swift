//
//  Test0950.swift
//  Test
//
//  Created by Kevin Peng on 2021-05-22.
//  Copyright © 2021 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test0950: XCTestCase {
    private let sut = Q0950.Answer().deckRevealedIncreasing

    func test1() {
        let input = [17,13,11,2,3,5,7]
        let result = sut(input)
        let expectation = [2,13,3,11,5,17,7]
        XCTAssertEqual(result, expectation)
    }

    func test2() {
        let input = [17,13,11,2,3,5,7,19]
        let result = sut(input)
        let expectation = [2,11,3,17,5,13,7,19]
        XCTAssertEqual(result, expectation)
    }

    func test6() {
        let input = [17,13,11,2,3,5,7,19,21]
        let result = sut(input)
        let expectation = [2,21,3,13,5,19,7,17,11]
        XCTAssertEqual(result, expectation)
    }

    func test3() {
        let input = [2,3,5,7,11]
        let result = sut(input)
        let expectation = [2,11,3,7,5]
        XCTAssertEqual(result, expectation)
    }

    func test4() {
        let input = [2,3,5,7]
        let result = sut(input)
        let expectation = [2,5,3,7]
        XCTAssertEqual(result, expectation)
    }

    func test5() {
        let input = [17,13,11,2,3,5,7]
        let result = sut(input)
        let expectation = [2,13,3,11,5,17,7]
        XCTAssertEqual(result, expectation)
    }
}
