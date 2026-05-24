// AGPL-3.0-or-later

import Testing
@testable import WarpTemplateCore

@Test
func helloWorldMessageIncludesiPadOS() {
    #expect(helloWorldMessage(platform: "iPadOS").contains("iPadOS"))
}
