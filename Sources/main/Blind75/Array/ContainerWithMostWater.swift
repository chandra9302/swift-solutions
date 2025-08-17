final class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = 0

        // Use two-pointer technique to find the maximum area
        while left < right {
            // Find the height and width of the current container
            let currentHeight = min(height[left], height[right])
            let currentWidth = right - left
            // Calculate the area and update maxArea if needed
            let currentArea = currentHeight * currentWidth
            // Update maxArea if the current area is larger
            maxArea = max(maxArea, currentArea)

            // Move the pointer pointing to the shorter line inward
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        // Return the maximum area found
        return maxArea
    }
}

/*
MARK: - Complexity Analysis
Time Complexity: O(n)
    •	n is the number of elements in the height array.
    •	The while loop iterates through the array with two pointers, each moving inward.
Space Complexity: O(1)
    •	We use a constant amount of extra space.
*/