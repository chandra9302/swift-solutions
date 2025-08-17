import XCTest
@testable import main

final class ProductOfArrayExceptSelfTests: XCTestCase {
    func testProductExceptSelf_basic() {
        let nums = [1, 2, 3, 4]
        let expected = [24, 12, 8, 6]
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
    
    func testProductExceptSelf_withZero() {
        let nums = [0, 1, 2, 3]
        let expected = [6, 0, 0, 0]
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
    
    func testProductExceptSelf_multipleZeros() {
        let nums = [0, 1, 0, 3]
        let expected = [0, 0, 0, 0]
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
    
    func testProductExceptSelf_singleElement() {
        let nums = [5]
        let expected = [1]
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
    
    func testProductExceptSelf_empty() {
        let nums: [Int] = []
        let expected: [Int] = []
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
    
    func testProductExceptSelf_negativeNumbers() {
        let nums = [-1, 2, -3, 4]
        let expected = [-24, 12, -8, 6]
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf(nums), expected)
    }
}
