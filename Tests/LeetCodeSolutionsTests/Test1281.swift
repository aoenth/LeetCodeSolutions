//
//  Test1281.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1281: XCTestCase {
  private let sut = Solution1281()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.subtractProductAndSum(234)
    XCTAssertEqual(result, 15)
  }
  
  func test2() {
    let result = sut.subtractProductAndSum(4421)
    XCTAssertEqual(result, 21)
  }
  
  func test3() {
    let result = sut.subtractProductAndSum(114)
    XCTAssertEqual(result, -2)
  }
}
