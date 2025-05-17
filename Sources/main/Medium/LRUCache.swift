class LRUCacheNode {
    var key: Int
    var value: Int
    var prev: LRUCacheNode?
    var next: LRUCacheNode?

    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
        self.prev = nil
        self.next = nil
    }
}

class LRUCache {
    var dict: [Int: LRUCacheNode]
    let capacity: Int
    var dummyHead: LRUCacheNode
    var dummyTail: LRUCacheNode

    init(capacity: Int) {
        self.capacity = capacity
        self.dict = [:]
        dummyHead = LRUCacheNode(0, 0)
        dummyTail = LRUCacheNode(0, 0)
        dummyHead.next = dummyTail
        dummyTail.prev = dummyHead
    }

    func get(_ key: Int) -> Int {
        if let node = dict[key] {
            // Move node to head
            moveToHead(node)
            return node.value
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = dict[key] {
            node.value = value
            moveToHead(node)
        } else {
            let newNode = LRUCacheNode(key, value)
            addToHead(newNode)
            dict[key] = newNode

            if dict.count > capacity, let lru = removeTail() {
                dict.removeValue(forKey: lru.key)
            }
        }
    }

    func removeTail() -> LRUCacheNode? {
        guard let tail = dummyTail.prev, tail !== dummyHead else {
            return nil
        }
        removeNode(tail)
        return tail
    }

    func moveToHead(_ node: LRUCacheNode) {
        removeNode(node)
        addToHead(node)
    }

    func removeNode(_ node: LRUCacheNode) {
        node.next?.prev = node.prev
        node.prev?.next = node.next
    }

    func addToHead(_ node: LRUCacheNode) {
        node.next = dummyHead.next
        dummyHead.next = node
        node.next?.prev = node
        node.prev = dummyHead
    }
}
