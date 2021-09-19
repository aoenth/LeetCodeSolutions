//
//  File.swift
//  File
//
//  Created by Kevin Peng on 2021-09-18.
//

import Foundation

struct Q3979 {
    class Solution {
        func addOperators(_ num: String, _ target: Int) -> [String] {
            findPath(
                num,
                target,
                num.startIndex,
                "",
                1,
                0
            )
        }

        private func findPath(
            _ num: String,
            _ target: Int,
            _ index: String.Index,
            _ previousOperation: String,
            _ previousOperand: Int,
            _ previousResult: Int
        ) -> [String] {
            guard index < num.endIndex else {
                if previousResult == target {
                    return [previousOperation + "\(previousOperand)"]
                } else {
                    return []
                }
            }

            let currentOperandString = String(num[index])
            let currentOperand = Int(currentOperandString)!

            let additionPaths = findPath(
                num,
                target,
                num.index(after: index),
                "+",
                currentOperand,
                previousResult + currentOperand
            )

            let subtractionPath = findPath(
                num,
                target,
                num.index(after: index),
                "-",
                currentOperand,
                previousResult - currentOperand
            )

            var pendingResult = previousResult
            if previousOperation == "+" {
                pendingResult = previousResult - previousOperand
                let currentMultiple = previousOperand * currentOperand
                pendingResult += currentMultiple
            } else if previousOperation == "-" {
                pendingResult = previousResult + previousOperand
                let currentMultiple = previousOperand * currentOperand
                pendingResult -= currentMultiple
            }

            let multiplicationPath = findPath(
                num,
                target,
                num.index(after: index),
                "*",
                currentOperand,
                pendingResult
            )
            if previousOperation.isEmpty {
                return additionPaths +
                subtractionPath +
                multiplicationPath
            } else {
                return [additionPaths, subtractionPath, multiplicationPath].flatMap { paths in
                    paths.map { path in
                        previousOperation + String(describing: previousOperand) + path
                    }
                }
            }
        }
    }
}
