final class InsertDeleteGetRandomInOof1 {
    private var elements: [Int] = []
    private var indexMap: [Int: Int] = [:]

    init() {}

    /// Inserts a value into the data structure if it is not already present.
    ///
    /// - Parameter val: The integer value to insert.
    /// - Returns: `true` if the value was successfully inserted; `false` if the value already exists.
    ///
    /// This method checks if the value is already present using `indexMap`.
    /// If not present, it appends the value to the `elements` array and updates `indexMap`
    /// with the new index. This ensures O(1) insertion time.
    func insert(_ val: Int) -> Bool {
        guard indexMap[val] == nil else { return false }
        elements.append(val)
        indexMap[val] = elements.count - 1
        return true
    }


    /// Removes a value from the data structure if it exists.
    ///
    /// - Parameter val: The integer value to remove.
    /// - Returns: `true` if the value was present and removed; `false` otherwise.
    ///
    /// This method works in O(1) time by:
    /// - Checking if the value exists in the index map.
    /// - Swapping the element to remove with the last element in the array to maintain O(1) removal.
    /// - Updating the index map for the swapped element.
    /// - Removing the last element from the array and the value from the index map.
    ///
    /// Example usage:
    /// ```swift
    /// let result = remove(5) // returns true if 5 was present and removed
    /// ```
    func remove(_ val: Int) -> Bool {
        guard let index = indexMap[val] else { return false }
        let lastElement = elements.last!
        elements[index] = lastElement
        indexMap[lastElement] = index
        elements.removeLast()
        indexMap.removeValue(forKey: val)
        return true
    }

    /// Returns a random element from the `elements` collection.
    ///
    /// - Returns: A randomly selected `Int` from the `elements` array.
    /// - Note: This method force-unwraps the result of `randomElement()`, so it will crash if `elements` is empty.
    /// - Important: Ensure that `elements` is not empty before calling this method to avoid a runtime error.
    /// - Example:
    ///   ```swift
    ///   let randomValue = getRandom()
    ///   print(randomValue) // Prints a random element from the collection
    ///   ```
    func getRandom() -> Int {
        return elements.randomElement()!
    }
}