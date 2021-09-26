//
//  Test1512.swift
//  Test1512
//
//  Created by Kevin Peng on 2020-07-13.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1512: XCTestCase {
  func testSolutionExists() {
    _ = Solution1512()
  }
  
  func test1() {
    let result = Solution1512().numIdenticalPairs([1,2,3,1,1,3])
    XCTAssertEqual(result, 4)
  }
  
  func test2() {
    let result = Solution1512().numIdenticalPairs([1,1,1,1])
    XCTAssertEqual(result, 6)
  }
  
  func test3() {
    let result = Solution1512().numIdenticalPairs([1,2,3])
    XCTAssertEqual(result, 0)
  }
}
