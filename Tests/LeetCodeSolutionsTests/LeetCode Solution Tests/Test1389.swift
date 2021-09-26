//
//  Test1389.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1389: XCTestCase {
  private let sut = Solution1389()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.createTargetArray([0,1,2,3,4], [0,1,2,2,1])
    XCTAssertEqual(result, [0,4,1,3,2])
  }
  
  func test2() {
    let result = sut.createTargetArray([1,2,3,4,0], [0,1,2,3,0])
    XCTAssertEqual(result, [0,1,2,3,4])
  }
  
  func test3() {
    let result = sut.createTargetArray([1], [0])
    XCTAssertEqual(result, [1])
  }
}
