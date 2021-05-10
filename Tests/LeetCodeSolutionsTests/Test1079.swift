import XCTest
@testable import LeetCodeSolutions

class Test1079: XCTestCase {
    private var sut = Q1079.function(.init())

    override func setUp() {
        super.setUp()
        sut = Q1079.function(.init())
    }

    func test1() {
        let result = sut("AAB")
        let expectation = 8
        XCTAssertEqual(result, expectation)
    }

    func test2() {
        let result = sut("AAABBC")
        let expectation = 188
        XCTAssertEqual(result, expectation)
    }

    func test3() {
        let result = sut("V")
        let expectation = 1
        XCTAssertEqual(result, expectation)
    }
}
