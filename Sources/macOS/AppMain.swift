// AGPL-3.0-or-later

import SwiftUI
import SwiftData
import WarpTemplateCore

@main
struct WarpTemplatemacOSApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(platformName: "macOS")
        }
        .modelContainer(for: LaunchNote.self)
    }
}
