//
//  Test0894.swift
//  
//
//  Created by Kevin Peng on 2021-05-09.
//

import XCTest
@testable import LeetCodeSolutions

final class Test0894: XCTestCase {
    let sut = Q0894.Solution().allPossibleFBT
    func test1() {
        let input = 3
        let result = sut(input).map(TreeNode.serialize)
        let expectation = ["[0,0,0]"]
        XCTAssertEqual(result, expectation)
    }
}
