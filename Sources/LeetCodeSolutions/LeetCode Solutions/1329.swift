//
//  1329.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import Foundation

class Solution1329 {
    func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
        var arraysHorizontal: [[Int]] = []
        var arraysVertical: [[Int]] = []
        var arrayDiagonal: [Int] = []
        for c in 1 ..< mat[0].count {
            var row = 0
            var col = c
            arraysHorizontal.append([])
            while row < mat.count, col < mat[0].count {
                arraysHorizontal[c - 1].append(mat[row][col])
                row += 1
                col += 1
            }
        }

        for r in 1 ..< mat.count {
            var row = r
            var col = 0
            arraysVertical.append([])
            while row < mat.count, col < mat[0].count {
                arraysVertical[r - 1].append(mat[row][col])
                row += 1
                col += 1
            }
        }

        var i = 0
        while i < min(mat[0].count, mat.count) {
            arrayDiagonal.append(mat[i][i])
            i += 1
        }
        arraysHorizontal = arraysHorizontal.map { $0.sorted() }
        arraysVertical = arraysVertical.map { $0.sorted() }
        arrayDiagonal.sort()
        var mat = mat
        for c in 1 ..< mat[0].count {
            var row = 0
            var col = c
            while row < mat.count, col < mat[0].count {
                mat[row][col] = arraysHorizontal[c - 1][row]
                row += 1
                col += 1
            }
        }
        for r in 1 ..< mat.count {
            var row = r
            var col = 0
            while row < mat.count, col < mat[0].count {
                mat[row][col] = arraysVertical[r - 1][col]
                row += 1
                col += 1
            }
        }
        i = 0
        while i < min(mat[0].count, mat.count) {
            mat[i][i] = arrayDiagonal[i]
            i += 1
        }
        return mat
    }
}
