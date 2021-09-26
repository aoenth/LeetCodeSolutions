//
//  Test1486.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1486: XCTestCase {
  private let sut = Solution1486()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.xorOperation(5, 0)
    XCTAssertEqual(result, 8)
  }
  
  func test2() {
    let result = sut.xorOperation(4, 3)
    XCTAssertEqual(result, 8)
  }
  
  func test3() {
    let result = sut.xorOperation(1, 7)
    XCTAssertEqual(result, 7)
  }
  
  func test4() {
    let result = sut.xorOperation(10, 5)
    XCTAssertEqual(result, 2)
  }
}
