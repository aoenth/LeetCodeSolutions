//
//  Test0807.swift
//  
//
//  Created by Kevin Peng on 2021-05-02.
//

import XCTest
@testable import LeetCodeSolutions

class Test0807: XCTestCase {
    func test1() {
        let input = [[13,47,91,34,20,33,39,22,80,62],[73,97,88,51,38,36,52,75,25,99],[95,43,32,26,82,74,60,69,59,55],[20,41,77,95,79,46,70,50,17,51],[51,0,93,27,46,41,58,49,8,5],[92,58,38,56,73,93,34,47,23,62],[97,66,57,72,26,46,4,90,82,74],[7,44,67,96,0,82,75,22,53,100],[95,48,46,68,41,53,69,42,13,87],[79,48,96,39,21,35,3,12,22,42]]
        let result = maxIncreaseKeepingSkyline(input)
        let expected = 3673
        XCTAssertEqual(result, expected)
    }
}
