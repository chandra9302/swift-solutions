class PowerCalculator {
    func myPow(_ x: Double, _ n: Int) -> Double {
        // Base case: if n is 0, return 1
        if n == 0 { return 1 }
        // If n is negative, convert it to positive and take the reciprocal
        if n < 0 {
            return 1 / myPow(x, -n)
        }
        // If n is even, calculate the power of half the exponent
        if n % 2 == 0 {
            let half = myPow(x, n / 2)
            return half * half
        } else {
            // If n is odd, multiply x with the power of (n - 1)
            return x * myPow(x, n - 1)
        }
    }
}