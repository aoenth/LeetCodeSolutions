struct MinHeap<Element: Comparable> {
	private var storage: [Element] = []
	var size = 0

	private func leftChildIndex(parentIndex: Int) -> Int {
		2 * parentIndex + 1
	}

	private func rightChildIndex(parentIndex: Int) -> Int {
		2 * parentIndex + 2
	}

	private func parentIndex(childIndex: Int) -> Int {
		(childIndex - 1) / 2
	}

	private func hasLeftChild(index: Int) -> Bool {
		leftChildIndex(parentIndex: index) < size
	}

	private func hasRightChild(index: Int) -> Bool {
		rightChildIndex(parentIndex: index) < size
	}

	private func hasParent(index: Int) -> Bool {
		parentIndex(childIndex: index) >= 0
	}

	private func leftChild(atIndex index: Int) -> Element? {
		guard index < size else { return nil }
		return storage[leftChildIndex(parentIndex: index)]
	}

	private func rightChild(atIndex index: Int) -> Element? {
		guard index < size else { return nil }
		return storage[rightChildIndex(parentIndex: index)]
	}

	private func parent(atIndex index: Int) -> Element? {
		guard index < size else { return nil }
		return storage[parentIndex(childIndex: index)]
	}

	func peek() -> Element? {
		storage.first
	}

	mutating func pop() -> Element? {
		if let item = storage.first {
			storage[0] = storage[size - 1]
			size -= 1
			heapifyDown()
			return item
		}
		return nil
	}

	mutating func push(_ element: Element) {
		storage.append(element)
		size += 1
		heapifyUp()
	}

	private mutating func heapifyUp() {
		var index = size - 1
		while hasParent(index: index), let parent = parent(atIndex: index), parent > storage[index] {
			storage.swapAt(parentIndex(childIndex: index), index)
			index = parentIndex(childIndex: index)
		}
	}

	private mutating func heapifyDown() {
		var index = 0
		while hasLeftChild(index: index) {
			var smallerChildIndex = leftChildIndex(parentIndex: index)
			if hasRightChild(index: index), let rightChild = rightChild(atIndex: index), let leftChild = leftChild(atIndex: index), rightChild < leftChild {
				smallerChildIndex = rightChildIndex(parentIndex: index)
			}

			if storage[index] < storage[smallerChildIndex] {
				break
			} else {
				storage.swapAt(index, smallerChildIndex)
			}
			index = smallerChildIndex
		}
	}
}