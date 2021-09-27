import XCTest
@testable import LeetCodeSolutions

class MinHeapTests: XCTestCase {
	func test_peek_shouldCheckMax() {
		let sut = MinHeap<Int>()
		let value = sut.peek()
		XCTAssertNil(value)
	}

	func test_push_shouldInsertValue() {
		var sut = MinHeap<Int>()
		sut.push(1)
		let value = sut.peek()
		XCTAssertEqual(value, 1)
	}

	func test_pop_shouldRemoveAndReturnMax() {
		var sut = MinHeap<Int>()
		sut.push(10)
		sut.push(13)
		sut.push(6)
		sut.push(4)
		sut.push(1)
		sut.push(8)
		sut.push(33)
		let value = sut.pop()
		XCTAssertEqual(value, 1)

		let value2 = sut.pop()
		XCTAssertEqual(value2, 4)
	}
}