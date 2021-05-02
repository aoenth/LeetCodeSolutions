//
//  Test1290.swift
//  Test
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import XCTest
@testable import LeetCodeSolutions

class Test1290: XCTestCase {
  private let sut = Solution1290()
  
  func testSolutionExists() {
    _ = sut
  }
  
  func test1() {
    let input = [1,0,1]
    let result = sut.getDecimalValue(makeListNode(array: input))
    XCTAssertEqual(result, 5)
  }
  
  func test2() {
    let input = [0]
    let result = sut.getDecimalValue(makeListNode(array: input))
    XCTAssertEqual(result, 0)
  }
  
  func test3() {
    let input = [1]
    let result = sut.getDecimalValue(makeListNode(array: input))
    XCTAssertEqual(result, 1)
  }
  
  func test4() {
    let input = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
    let result = sut.getDecimalValue(makeListNode(array: input))
    XCTAssertEqual(result, 18880)
  }
  
  func test5() {
    let input = [0,0]
    let result = sut.getDecimalValue(makeListNode(array: input))
    XCTAssertEqual(result, 0)
  }
  
  func testMakeListNode() {
    let input = [1,0,0,1,0,0]
    let result = makeListNode(array: input)
    let node0 = ListNode(1)
    let node1 = ListNode(0)
    let node2 = ListNode(0)
    let node3 = ListNode(1)
    let node4 = ListNode(0)
    let node5 = ListNode(0)
    node0.next = node1
    node1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node5
    let expected = node0
    XCTAssertEqual(expected, result)
  }
  
  private func makeListNode(array: [Int]) -> ListNode {
    let head = ListNode()
    var currentNode: ListNode? = head
    for (i, e) in array.enumerated() {
      currentNode?.val = e
      if i + 1 < array.count {
        let newNode = ListNode()
        currentNode?.next = newNode
        currentNode = currentNode?.next
      }
    }
    return head
  }
}
