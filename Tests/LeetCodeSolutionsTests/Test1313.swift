//
//  Test1313.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1313: XCTestCase {
  private let sut = Solution1313()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.decompressRLElist([1,2,3,4])
    XCTAssertEqual(result, [2,4,4,4])
  }
  
  func test2() {
    let result = sut.decompressRLElist([1,1,2,3])
    XCTAssertEqual(result, [1,3,3])
  }
}
