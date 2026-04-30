// AGPL-3.0-or-later

import Foundation
import SwiftData

@Model
public final class LaunchNote {
    public var platform: String
    public var createdAt: Date

    public init(platform: String, createdAt: Date = .now) {
        self.platform = platform
        self.createdAt = createdAt
    }
}
