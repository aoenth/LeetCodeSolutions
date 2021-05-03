import XCTest
@testable import LeetCodeSolutions

class Test1329: XCTestCase {
    let sut = Solution1329().diagonalSort

    func testSolutionExists() {
        let input = [[3,3,1,1],[2,2,1,2],[1,1,1,2]]
        let result = sut(input)
        let expectation = [[1,1,1,1],[1,2,2,2],[1,2,3,3]]
        XCTAssertEqual(result, expectation)
    }


}
