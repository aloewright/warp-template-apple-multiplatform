// AGPL-3.0-or-later

import Testing
@testable import WarpTemplateCore

@Test
func helloWorldMessageIncludesmacOS() {
    #expect(helloWorldMessage(platform: "macOS").contains("macOS"))
}
