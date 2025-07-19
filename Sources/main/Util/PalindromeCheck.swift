func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty else { return false }

    let chars = Array(s)
    var left = 0, right = chars.count - 1
    while left < right {
        if chars[left] != chars[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}