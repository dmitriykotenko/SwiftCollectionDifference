import XCTest

import SwiftCollectionDifference


class SwiftCollectionDifferenceTests: XCTestCase {

  func testCorrectness() {
    let firstArray = ["1", "2", "3", "4", "5", "6", "7"]
    let secondArray = ["3", "2", "1", "5", "6", "7"]

    XCTAssertEqual(
      secondArray.getDifference(from: firstArray),
      .init([
        .remove(offset: 0, element: "1", associatedWith: nil),
        .remove(offset: 1, element: "2", associatedWith: nil),
        .remove(offset: 3, element: "4", associatedWith: nil),
        .insert(offset: 1, element: "2", associatedWith: nil),
        .insert(offset: 2, element: "1", associatedWith: nil),
      ])!
    )
  }
}
