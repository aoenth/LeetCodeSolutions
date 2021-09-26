//
//  Test1295.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1295: XCTestCase {
  private let sut = Solution1295()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.findNumbers([12,345,2,6,7896])
    XCTAssertEqual(result, 2)
  }
  
  func test2() {
    let result = sut.findNumbers([555,901,482,1771])
    XCTAssertEqual(result, 1)
  }
  
  func test3() {
    let result = sut.findNumbers([100000])
    XCTAssertEqual(result, 1)
  }
  
  func testNumberOfDigits1() {
    let result = sut.numberOfDigits(100)
    XCTAssertEqual(result, 3)
  }
  
  func testNumberOfDigits2() {
    let result = sut.numberOfDigits(1000)
    XCTAssertEqual(result, 4)
  }
  
  func testNumberOfDigits3() {
    let result = sut.numberOfDigits(0)
    XCTAssertEqual(result, 1)
  }
  
  func testNumberOfDigits4() {
    let result = sut.numberOfDigits(340)
    XCTAssertEqual(result, 3)
  }
  
  func testNumberOfDigits5() {
    let result = sut.numberOfDigits(99999)
    XCTAssertEqual(result, 5)
  }
}
