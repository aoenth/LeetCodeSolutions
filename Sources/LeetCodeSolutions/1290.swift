//
//  1290.swift
//  LeetCode
//
//  Created by Kevin Peng on 2020-07-14.
//  Copyright © 2020 Monorail Apps. All rights reserved.
//

import Foundation

//Definition for singly-linked list.
public class ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    var leftNode: ListNode? = lhs
    var rightNode: ListNode? = rhs
    while leftNode != nil || rightNode != nil {
      if leftNode?.val != rightNode?.val {
        return false
      }
      leftNode = leftNode?.next
      rightNode = rightNode?.next
    }
    return leftNode?.next == nil && rightNode?.next == nil
  }
  
  
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }

  
}

class Solution1290 {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var currentNode: ListNode? = head
    var currentValue = 0
    while currentNode != nil {
      currentValue <<= 1
      currentValue |= currentNode!.val
      currentNode = currentNode?.next
    }
    return currentValue
  }
}
