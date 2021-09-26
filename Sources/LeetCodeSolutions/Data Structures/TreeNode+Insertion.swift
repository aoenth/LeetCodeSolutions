//
//  TreeNode+Insertion.swift
//
//
//  Created by Kevin Peng on 2021-05-09.
//

import Foundation

extension TreeNode {
    func insert(_ root: TreeNode?, _ value: Int) -> TreeNode? {
        guard let root = root else {
            return TreeNode(value)
        }
        if root.val < value {
            root.right = insert(root.right, value)
        } else if root.val > val {
            root.left = insert(root.left, value)
        }
        return root
    }
}
