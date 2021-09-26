//
//  Test0709.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-16.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test0709: XCTestCase {
  private let sut = Solution0709()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let result = sut.toLowerCase("Hello")
    XCTAssertEqual(result, "hello")
  }
  
  func test2() {
    let result = sut.toLowerCase("here")
    XCTAssertEqual(result, "here")
  }
  
  func test3() {
    let result = sut.toLowerCase("LOVELY")
    XCTAssertEqual(result, "lovely")
  }
  
  func test4() {
    let result = sut.toLowerCase("al&phaBET")
    XCTAssertEqual(result, "al&phabet")
  }
  
  func test5() {
    let result = sut.toLowerCase("H7#Il&")
    XCTAssertEqual(result, "h7#il&")
  }
}
