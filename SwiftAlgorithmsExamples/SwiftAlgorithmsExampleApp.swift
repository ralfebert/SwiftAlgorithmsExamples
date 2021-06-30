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
                        CombinationsView()
                    }
                    Section {
                        PermutationsView()
                    }
                    Section {
                        ChunksOfCountView()
                    }
                    Section {
                        AdjacentPairsView()
                    }
                }
                .navigationTitle("Swift Algorithms")
            }
        }
    }
}
