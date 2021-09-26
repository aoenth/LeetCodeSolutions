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
        return "[" + result.joined(separator: ",") + "]"
    }

    private static func encode(_ root: TreeNode?) -> [String] {
        guard let root = root else { return ["null"] }
        var result = [String]()
        if let left = root.left {
            result += encode(left)
        }
        if let right = root.right {
            result += encode(right)
        }
        result.append(String(root.val))
        return result
    }

    static func deserialize(_ data: String) -> TreeNode? {
        var data = data
        data.removeFirst()
        data.removeLast()
        var array = data.components(separatedBy: ",")
        if array.count == 0 { return nil }
        return decode(&array)
    }

    private static func decode(_ array: inout [String])-> TreeNode? {
        if array.count == 0 { return nil }
        let lastItem = array.last!
        if lastItem == "null" {
            array.removeLast()
            return nil
        }
        let val = array.removeLast()
        let node: TreeNode? = TreeNode(Int(val)!)
        node?.right = decode(&array)
        node?.left = decode(&array)
        return node
    }
}
