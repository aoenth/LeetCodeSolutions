//
//  Test1450.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-17.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1450: XCTestCase {
  private let sut = Solution1450()

  func testSolutionExists() {
    _ = sut
  }

  func test1() {
    let result = sut.busyStudent([4], [4], 4)
    XCTAssertEqual(result, 1)
  }

  func test2() {
    let result = sut.busyStudent([4], [4], 5)
    XCTAssertEqual(result, 0)
  }

  func test3() {
    let result = sut.busyStudent([1,1,1,1], [1,3,2,4], 7)
    XCTAssertEqual(result, 0)
  }

  func test4() {
    let result = sut.busyStudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5)
    XCTAssertEqual(result, 5)
  }

  func test5() {
    let result = sut.busyStudent([1,2,3], [3,2,7], 4)
    XCTAssertEqual(result, 1)
  }



}
