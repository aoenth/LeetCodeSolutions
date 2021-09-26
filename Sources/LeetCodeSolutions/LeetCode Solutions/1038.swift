//
//  1038.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

func bstToGst(_ root: TreeNode?) -> TreeNode? {
    _ = _bstToGst(root, 0)
    return root
}

func _bstToGst(_ root: TreeNode?, _ parentValue: Int) -> TreeNode? {
    guard let root = root else { return nil }
    if let right = root.right {
        if let next = _bstToGst(right, parentValue) {
            root.val += next.val
        }
    } else {
        root.val += parentValue
    }
    if let left = root.left {
        return _bstToGst(left, root.val)
    } else {
        return root
    }
}
