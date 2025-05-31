class MovingAverageFromDataStream {

    // We use a sliding window approach to maintain the sum of the last 'windowSize' elements.
    private var windowSize: Int
    // This will hold the elements in the current window.
    private var dataStream: [Double] = []
    // This will hold the current sum of the elements in the window.
    private var currentSum: Double = 0.0

    init(_ windowSize: Int) {
        self.windowSize = windowSize
    }

    func next(_ value: Double) -> Double {
        // Append the new value to the data stream and update the current sum.
        dataStream.append(value)
        // Add the new value to the current sum.
        currentSum += value
        
        // If the size of the data stream exceeds the window size, remove the oldest value.
        if dataStream.count > windowSize {
            currentSum -= dataStream.removeFirst()
        }
        
        // Calculate and return the moving average.
        // The moving average is the current sum divided by the number of elements in the data stream.
        return currentSum / Double(dataStream.count)
    }
}