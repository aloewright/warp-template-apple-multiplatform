// AGPL-3.0-or-later

import SwiftUI
import SwiftData
import WarpTemplateCore

@main
struct WarpTemplateiOSApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(platformName: "iOS")
        }
        .modelContainer(for: LaunchNote.self)
    }
}
