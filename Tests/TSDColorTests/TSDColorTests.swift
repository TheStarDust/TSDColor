import XCTest
@testable import TSDColor

class TSDColorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(TSDColor().text, "Hello, World!")
    }


    static var allTests : [(String, (TSDColorTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
