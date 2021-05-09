//
//  1305.swift
//  
//
//  Created by Kevin Peng on 2021-05-09.
//

import Foundation
struct Q1305 {
    class Solution {
        func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
            let allValues = getBSTValues(root1) + getBSTValues(root2)
            return allValues.sorted()
        }

        func getBSTValues(_ root: TreeNode?) -> [Int] {
            guard let root = root else { return [] }
            var values = [Int]()
            if let left = root.left {
                values += getBSTValues(left)
            }
            values.append(root.val)
            if let right = root.right {
                values += getBSTValues(right)
            }
            return values
        }
    }
}
