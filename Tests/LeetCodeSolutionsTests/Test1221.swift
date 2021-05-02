//
//  Test1221.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1221: XCTestCase {
  private let sut = Solution1221()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.balancedStringSplit("RLRRLLRLRL")
    XCTAssertEqual(result, 4)
  }
  
  func test2() {
    let result = sut.balancedStringSplit("RLLLLRRRLR")
    XCTAssertEqual(result, 3)
  }
  
  func test3() {
    let result = sut.balancedStringSplit("LLLLRRRR")
    XCTAssertEqual(result, 1)
  }
  
  func test4() {
    let result = sut.balancedStringSplit("RLRRRLLRLL")
    XCTAssertEqual(result, 2)
  }
}
