final class LetterCasePermutation {
    func letterCasePermutation(_ s: String) -> [String] {
        var result = [String]()
        var chars = Array(s)

        func dfs(_ index: Int, _ path: String) {
            if index == chars.count {
                result.append(path)
                return
            }

            let char = chars[index]
            if char.isLetter {
                dfs(index+1, path + char.lowercased())
                dfs(index+1, path + char.uppercased())
            } else {
                dfs(index+1, path + String(char))
            }
        }

        dfs(0, "")
        return result
    }
}