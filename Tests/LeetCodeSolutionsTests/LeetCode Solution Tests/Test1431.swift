//
//  Test1431.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1431: XCTestCase {
  private let sut = Solution1431()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.kidsWithCandies([2,3,5,1,3], 3)
    XCTAssertEqual(result, [true,true,true,false,true])
  }
  
  func test2() {
    let result = sut.kidsWithCandies([4,2,1,1,2], 1)
    XCTAssertEqual(result, [true,false,false,false,false])
  }
  
  func test3() {
    let result = sut.kidsWithCandies([12,1,12], 10)
    XCTAssertEqual(result, [true,false,true])
  }
}
