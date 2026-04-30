// AGPL-3.0-or-later

import FoundationModelsBridge
import SwiftData
import SwiftUI

public struct RootView: View {
    private let platformName: String

    @Environment(\.modelContext) private var modelContext
    @Query(sort: \LaunchNote.createdAt, order: .reverse) private var launchNotes: [LaunchNote]
    @State private var didSeed = false

    public init(platformName: String) {
        self.platformName = platformName
    }

    public var body: some View {
        let bridgeState = availability() ? "ready" : "scaffolded only"

        VStack(alignment: .leading, spacing: 16) {
            Text(helloWorldMessage(platform: platformName))
                .font(.largeTitle.bold())

            Text("SwiftData launches: \(launchNotes.count)")
                .font(.headline)

            Text("FoundationModelsBridge availability: \(bridgeState)")
                .font(.callout)
                .foregroundStyle(.secondary)

            if let latest = launchNotes.first {
                Text("Latest launch: \(latest.createdAt.formatted(date: .abbreviated, time: .standard))")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .task {
            guard !didSeed, launchNotes.isEmpty else { return }
            didSeed = true
            modelContext.insert(LaunchNote(platform: platformName))
            try? modelContext.save()
        }
    }
}
