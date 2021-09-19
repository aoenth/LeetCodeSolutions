//
//  3979.swift
//  3979
//
//  Created by Kevin Peng on 2021-09-18.
//

import Foundation

struct Q3979 {
    class Solution {
        func addOperators(_ num: String, _ target: Int) -> [String] {
            let n = num.endIndex
            var answers: [String] = []
            func findPath(
                index: String.Index,
                previousOperand: Int,
                currentOperand: Int,
                value: Int,
                string: [String]
            ) {
                guard index < n else {
                    if value == target, currentOperand == 0 {
                        answers.append(string[1...].joined(separator: ""))
                    }
                    return
                }

                let currentOperand = currentOperand * 10 + Int(String(num[index]))!
                let currentOperandString = String(describing: currentOperand)

                if currentOperand > 0 {
                    findPath(index: num.index(after: index), previousOperand: previousOperand, currentOperand: currentOperand, value: value, string: string)
                }

                var newString = string + ["+", currentOperandString]

                findPath(index: num.index(after: index), previousOperand: currentOperand, currentOperand: 0, value: value + currentOperand, string: newString)

                newString.removeLast(2)

                if newString.count > 0 {
                    newString += ["-", currentOperandString]
                    findPath(index: num.index(after: index), previousOperand: -currentOperand, currentOperand: 0, value: value - currentOperand, string: newString)
                    newString.removeLast(2)


                    newString += ["*", currentOperandString]
                    findPath(
                        index: num.index(after: index),
                        previousOperand: currentOperand * previousOperand,
                        currentOperand: 0,
                        value: value - previousOperand + (currentOperand * previousOperand),
                        string: newString)

                    newString.removeLast(2)
                }
            }
            findPath(index: num.startIndex, previousOperand: 0, currentOperand: 0, value: 0, string: [])
            return answers
        }
    }
}
