import SwiftUI

@main
struct SwiftAlgorithmsExampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Form {
                    Section {
                        RotateToStartAtView()
                    }
                    Section {
                        ChunksOfCountView()
                    }
                    Section {
                        AdjacentPairsView()
                    }
                    Section {
                        CombinationsView()
                    }
                    Section {
                        PermutationsView()
                    }
                }
                .navigationTitle("Swift Algorithms")
            }
        }
    }
}
