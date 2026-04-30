// AGPL-3.0-or-later

import SwiftUI
import SwiftData
import WarpTemplateCore

@main
struct WarpTemplateiPadOSApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(platformName: "iPadOS")
        }
        .modelContainer(for: LaunchNote.self)
    }
}
