//
//  Test1365.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1365: XCTestCase {
  private let sut = Solution1365()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.smallerNumbersThanCurrent([8,1,2,2,3])
    XCTAssertEqual(result, [4,0,1,1,3])
  }
  
  func test2() {
    let result = sut.smallerNumbersThanCurrent([6,5,4,8])
    XCTAssertEqual(result, [2,1,0,3])
  }
  
  func test3() {
    let result = sut.smallerNumbersThanCurrent([7,7,7,7])
    XCTAssertEqual(result, [0,0,0,0])
  }
  
}
