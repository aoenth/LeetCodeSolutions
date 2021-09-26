//
//  Test0007.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test0007: XCTestCase {
  private let sut = Solution0007()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.reverse(123)
    XCTAssertEqual(result, 321)
  }
  
  func test2() {
    let result = sut.reverse(-123)
    XCTAssertEqual(result, -321)
  }
  
  func test3() {
    let result = sut.reverse(120)
    XCTAssertEqual(result, 21)
  }
  
  func test4() {
    let result = sut.reverse(7085774586302739999)
    XCTAssertEqual(result, 0)
  }
  
  func test5() {
    let result = sut.reverse(1534236469)
    XCTAssertEqual(result, 0)
  }
}
