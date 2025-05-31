import XCTest
@testable import main

final class CourseScheduleTests: XCTestCase {
    var courseSchedule: CourseSchedule!

    override func setUp() {
        super.setUp()
        courseSchedule = CourseSchedule()
    }

    override func tearDown() {
        courseSchedule = nil
        super.tearDown()
    }

    func testCanFinishExample1() {
        let numCourses = 2
        let prerequisites = [[1, 0]]
        XCTAssertTrue(courseSchedule.canFinish(numCourses, prerequisites))
    }

    func testCanFinishExample2() {
        let numCourses = 2
        let prerequisites = [[1, 0], [0, 1]]
        XCTAssertFalse(courseSchedule.canFinish(numCourses, prerequisites))
    }

    func testCanFinishExample3() {
        let numCourses = 5
        let prerequisites = [[0, 1], [0, 2], [1, 2], [2, 3], [3, 4]]
        XCTAssertTrue(courseSchedule.canFinish(numCourses, prerequisites))
    }
}