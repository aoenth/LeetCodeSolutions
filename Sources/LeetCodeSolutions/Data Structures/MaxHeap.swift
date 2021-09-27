struct MaxHeap<Element: Comparable> {
	private var storage: [Element] = []
	private var size: Int = 0

	private func leftChildIndex(parentIndex: Int) -> Int {
		2 * parentIndex + 1
	}

	private func rightChildIndex(parentIndex: Int) -> Int {
		2 * parentIndex + 2
	}

	private func parentIndex(childIndex: Int) -> Int {
		(childIndex - 1) / 2
	}

	private func hasLeftChild(parentIndex: Int) -> Bool {
		leftChildIndex(parentIndex: parentIndex) < size
	}

	private func hasRightChild(parentIndex: Int) -> Bool {
		rightChildIndex(parentIndex: parentIndex) < size
	}

	private func hasParent(childIndex: Int) -> Bool {
		parentIndex(childIndex: childIndex) >= 0
	}

	private func leftChild(atIndex index: Int) -> Element? {
		guard hasLeftChild(parentIndex: index) else { return nil }
		return storage[leftChildIndex(parentIndex: index)]
	}

	private func rightChild(atIndex index: Int) -> Element? {
		guard hasRightChild(parentIndex: index) else { return nil }
		return storage[rightChildIndex(parentIndex: index)]
	}

	private func parent(atIndex index: Int) -> Element? {
		guard hasParent(childIndex: index) else { return nil }
		return storage[parentIndex(childIndex: index)]
	}

	func peek() -> Element? {
		return storage.first
	}

	mutating func pop() -> Element? {
		if let element = storage.first {
			storage[0] = storage[size - 1]
			size -= 1
			heapifyDown()
			return element
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
		while hasParent(childIndex: index), let parent = parent(atIndex: index), parent < storage[index] {
			storage.swapAt(parentIndex(childIndex: index), index)
			index = parentIndex(childIndex: index)
		}
	}

	private mutating func heapifyDown() {
		var index = 0
		while hasLeftChild(parentIndex: index), let leftChild = leftChild(atIndex: index) {
			var largerChildIndex = leftChildIndex(parentIndex: index)
			if let rightChild = rightChild(atIndex: index), rightChild > leftChild {
				largerChildIndex = rightChildIndex(parentIndex: index)
			}

			if storage[largerChildIndex] < storage[index] {
				break
			} else {			
				storage.swapAt(largerChildIndex, index)
			}

			index = largerChildIndex
		}
	}
}