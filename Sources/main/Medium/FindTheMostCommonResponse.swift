final class FindTheMostCommonResponse {
    func findCommonResponse(_ responses: [[String]]) -> String {
        var frequency: [String: Int] = [:]
        var maxCount = 0
        var mostCommon = ""

        for dayResponses in responses {
            // Use a Set to track unique responses for the day as per the problem statement
            let unqiueResponses = Set(dayResponses)
            for response in unqiueResponses {
                frequency[response, default: 0] += 1
            }
        }
        for (response, count) in frequency {
            if count > maxCount {
                // If the count is greater than maxCount, update mostCommon
                // and maxCount to the current response and count
                maxCount = count
                mostCommon = response
            } else if count == maxCount, response < mostCommon {
                // If the count is tie, choose the lexicographically smaller one
                mostCommon = response
            }
        }

        return mostCommon
    }
}