import XCTest
@testable import Swift_Package_Manager_Static_Dynamic_Xcode_Bug
import SnapshotTesting
import SwiftUI

class Swift_Package_Manager_Static_Dynamic_Xcode_BugTests: XCTestCase {
    func testContentView() throws {
        let contentView = ContentView_Previews.previews
            .environment(\.clockIsAnimationEnabled, false)
            .environment(\.clockDate, .constant(.init(hour: 10, minute: 10, calendar: .autoupdatingCurrent)))
        let hostingController = UIHostingController(rootView: contentView)
        assertSnapshot(matching: hostingController, as: .image(on: .iPhoneSe))
    }
}
