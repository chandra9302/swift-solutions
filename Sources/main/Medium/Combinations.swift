final class Combinations {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        if n == 0 || k == 0 { return [] }
        var combinations = [[Int]]()
        var currentComb = [Int]()

        func dfs(_ start: Int) {
            if currentComb.count == k {
                combinations.append(currentComb)
                return
            }

            for i in stride(from: start, through: n, by: 1) {
                if currentComb.count + 1 > k { break }
                currentComb.append(i)
                dfs(i+1)
                currentComb.removeLast()
            }
        }

        dfs(1)
        return combinations
    }
}