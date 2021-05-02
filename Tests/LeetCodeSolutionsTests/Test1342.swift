//
//  Test1342.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1342: XCTestCase {
  private let sut = Solution1342()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.numberOfSteps(14)
    XCTAssertEqual(result, 6)
  }
  
  func test2() {
    let result = sut.numberOfSteps(8)
    XCTAssertEqual(result, 4)
  }
  
  func test3() {
    let result = sut.numberOfSteps(123)
    XCTAssertEqual(result, 12)
  }
}
