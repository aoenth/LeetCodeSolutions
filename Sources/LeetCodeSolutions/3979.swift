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
            []
        }

        private func findPath(
            _ num: String,
            _ target: Int,
            _ index: String.Index,
            _ previousOperation: String,
            _ previousOperand: Int,
            _ previousResult: Int
        ) -> [String] {
            guard index < num.endIndex else { return [] }

            let currentOperandString = String(num[index])
            let currentOperand = Int(currentOperandString)!

            let additionPath = findPath(
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
            return
                additionPath +
                subtractionPath +
                multiplicationPath
        }
    }
}
