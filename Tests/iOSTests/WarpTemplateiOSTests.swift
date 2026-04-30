// AGPL-3.0-or-later

import Testing
@testable import WarpTemplateCore

@Test
func helloWorldMessageIncludesiOS() {
    #expect(helloWorldMessage(platform: "iOS").contains("iOS"))
}
