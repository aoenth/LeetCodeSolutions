//
//  File.swift
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
    _bstToGst(root, 0)
}

func _bstToGst(_ root: TreeNode?, _ rootVal: Int) -> TreeNode? {
    guard let root = root else { return nil }
    var valToAddToRoot = rootVal
    if let right = root.right {
        if let rightChild = _bstToGst(right, rootVal) {
            var childToAdd = rightChild
            while let left = childToAdd.left {
                childToAdd = left
            }
            valToAddToRoot = childToAdd.val
        }
    }
    root.val += valToAddToRoot
    if let left = root.left {
        _ = _bstToGst(left, root.val)
    }
    return root
}
