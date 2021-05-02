//
//  Test1266.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-15.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1266: XCTestCase {
  private let sut = Solution1266()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]])
    XCTAssertEqual(result, 7)
  }
  
  func test2() {
    let result = sut.minTimeToVisitAllPoints([[3,2],[-2,2]])
    XCTAssertEqual(result, 5)
  }
  
  func testMin() {
    let result = sut.minTime(from: [1,1], to: [3, 4])
    XCTAssertEqual(result, 3)
  }
}
