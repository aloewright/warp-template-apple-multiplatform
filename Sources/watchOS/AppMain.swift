// AGPL-3.0-or-later

import SwiftUI
import SwiftData
import WarpTemplateCore

@main
struct WarpTemplatewatchOSApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(platformName: "watchOS")
        }
        .modelContainer(for: LaunchNote.self)
    }
}
