// AGPL-3.0-or-later

import Testing
@testable import WarpTemplateCore

@Test
func helloWorldMessageIncludeswatchOS() {
    #expect(helloWorldMessage(platform: "watchOS").contains("watchOS"))
}
