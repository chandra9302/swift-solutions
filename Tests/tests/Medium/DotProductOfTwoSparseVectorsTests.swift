import XCTest
@testable import main

final class SparseVectorTests: XCTestCase {
    func testSparseVector() {
        let sparseVector1 = SparseVector([1, 0, 0, 2, 3])
        let sparseVector2 = SparseVector([0,3,0,4,0])
        
        XCTAssertEqual(sparseVector1.dotProduct(sparseVector2), 8) // (0*1 + 0*0 + 0*0 + 2*2 + 4*3) = 8
    }

    func testSparseVector2() {
        let sparseVector1 = SparseVector([0,1,0,0,0])
        let sparseVector2 = SparseVector([0,0,0,0,2])
        
        XCTAssertEqual(sparseVector1.dotProduct(sparseVector2), 0) // (0*0 + 1*0 + 0*0 + 0*0 + 0*2) = 0
    }

    func testSparseVector3() {
        let sparseVector1 = SparseVector([0,1,0,0,2,0,0])
        let sparseVector2 = SparseVector([1,0,0,0,3,0,4])
        
        XCTAssertEqual(sparseVector1.dotProduct(sparseVector2), 6) // (0*1 + 1*0 + 0*0 + 0*0 + 2*3 + 0*0 + 0*4) = 6
    }
}