import XCTest
@testable import main

final class KthSmallestElementInASortedMatrixTests: XCTestCase {
    var kthSmallestElementInASortedMatrix: KthSmallestElementInASortedMatrix!

    override func setUp() {
        super.setUp()
        kthSmallestElementInASortedMatrix = KthSmallestElementInASortedMatrix()
    }

    override func tearDown() {
        kthSmallestElementInASortedMatrix = nil
        super.tearDown()
    }

    func testKthSmallestWithValidInput() {
        let matrix = [[1, 5, 9], [10, 11, 13], [12, 13, 15]]
        let k = 8
        XCTAssertEqual(kthSmallestElementInASortedMatrix.kthSmallest(matrix, k), 13)
    }
    func testKthSmallestWithSingleElement() {
        let matrix = [[-5]]
        let k = 1
        XCTAssertEqual(kthSmallestElementInASortedMatrix.kthSmallest(matrix, k), -5)
    }
}