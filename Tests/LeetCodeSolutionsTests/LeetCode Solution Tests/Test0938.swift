//
//  Test0938.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test0938: XCTestCase {
  private let sut = Solution0938()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let node18 = TreeNode(18)
    let node15 = TreeNode(15, nil, node18)
    
    let node7 = TreeNode(7)
    let node3 = TreeNode(3)
    let node5 = TreeNode(5, node3, node7)
    let node10 = TreeNode(10, node5, node15)
    let result = sut.rangeSumBST(node10, 7, 15)
    XCTAssertEqual(result, 32)
  }
  
  func test2() {
    let node18 = TreeNode(18)
    let node13 = TreeNode(13)
    let node15 = TreeNode(15, node13, node18)
    
    let node6 = TreeNode(6)
    let node1 = TreeNode(1)
    let node7 = TreeNode(7, node6, nil)
    let node3 = TreeNode(3, node1, nil)
    let node5 = TreeNode(5, node3, node7)
    let node10 = TreeNode(10, node5, node15)
    let result = sut.rangeSumBST(node10, 6, 10)
    XCTAssertEqual(result, 23)
  }
  
}
