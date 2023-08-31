import XCTest
import SwiftUI
@testable import SMUI

final class StacksTests: XCTestCase {
  func testZeroHStack() {
    let view = ZeroHStack() { EmptyView() }
    XCTAssertTrue((view as Any) is ZeroHStack<EmptyView>)
  }
  
  func testZeroVStack() {
    let view = ZeroVStack() { EmptyView() }
    XCTAssertTrue((view as Any) is ZeroVStack<EmptyView>)
  }
}
