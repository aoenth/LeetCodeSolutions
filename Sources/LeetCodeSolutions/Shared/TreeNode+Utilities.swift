//
//  TreeNode+Utilities.swift
//  Credits: https://github.com/vagrawal1986/swiftyleetcode/blob/main/297.%20Serialize%20and%20Deserialize%20Binary%20Tree
//  Created by Kevin Peng on 2021-05-09.
//

import Foundation

extension TreeNode {
    // Encodes a tree to a single string.
    static func serialize(_ root: TreeNode?) -> String {
        let result = encode(root)
        return result.joined(separator: " ")
    }

    private static func encode(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [String(Int.min)] }
        return encode(root.left) + encode(root.right) + [String(root.val)]
    }

    // Decodes your encoded data to tree.
    static func deserialize(_ data: String) -> TreeNode? {
        var arr = data.components(separatedBy: " ").compactMap(Int.init)
        if arr.count == 0 { return nil}
        return decode(&arr)
    }

    private static func decode(_ arr: inout [Int])-> TreeNode?{
        if arr.count == 0 {return nil}
        let lastItem = arr.last!
        if lastItem == Int.min {
            arr.removeLast()
            return nil
        }
        let val = arr.removeLast()
        let node: TreeNode? = TreeNode(val)
        node?.right = decode(&arr)
        node?.left = decode(&arr)
        return node
    }
}
