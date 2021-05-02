//
//  Test1470.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1470: XCTestCase {
  private let sut = Solution1470()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.shuffle([2,5,1,3,4,7], 3)
    XCTAssertEqual(result, [2,3,5,4,1,7] )
  }
  
  func test2() {
    let result = sut.shuffle([1,2,3,4,4,3,2,1], 4)
    XCTAssertEqual(result, [1,4,2,3,3,2,4,1])
  }
  
  func test3() {
    let result = sut.shuffle([1,1,2,2], 2)
    XCTAssertEqual(result, [1,2,1,2])
  }
}
