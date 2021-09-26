//
//  Test1252.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-16.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1252: XCTestCase {
  private let sut = Solution1252()

  func testSolutionExists() {
    _ = sut
  }

  func test1() {
    let result = sut.oddCells(2, 3, [[0,1],[1,1]])
    XCTAssertEqual(result, 6)
  }

  func test2() {
    let result = sut.oddCells(2, 2, [[1,1],[0,0]])
    XCTAssertEqual(result, 0)
  }



}
