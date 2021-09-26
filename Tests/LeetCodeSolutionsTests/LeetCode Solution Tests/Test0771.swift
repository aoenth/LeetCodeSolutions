//
//  Test0771.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test0771: XCTestCase {
  private let sut = Solution0771()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.numJewelsInStones("aA", "aAAbbbb")
    XCTAssertEqual(result, 3)
  }
  
  func test2() {
    let result = sut.numJewelsInStones("z", "ZZ")
    XCTAssertEqual(result, 0)
  }
}
