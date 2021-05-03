import XCTest
@testable import LeetCodeSolutions

class Test1409: XCTestCase {
    let sut = Solution1409().processQueries

    func test1() {
        let result = sut([3,1,2,1], 5)
        let expectation = [2,1,2,1]
        XCTAssertEqual(result, expectation)
    }

    func test2() {
        let result = sut([4,1,2,2], 4)
        let expectation = [3,1,2,0]
        XCTAssertEqual(result, expectation)
    }

    func test3() {
        let result = sut([7,5,5,8,3], 8)
        let expectation = [6,5,0,7,5]
        XCTAssertEqual(result, expectation)
    }
}
