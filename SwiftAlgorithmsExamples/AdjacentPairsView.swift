import Algorithms
import SwiftUI

struct AdjacentPairsView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var count = 2

    var body: some View {
        Text("adjacentPairs()")

        VStack(alignment: .leading) {
            // adjacentPairs() returns a List of tuples which is not Identifiable / Hashable -> it's mapped to an Array to
            // be displayed in SwiftUI
            ForEach(Array(self.choices.adjacentPairs().map { [$0.0, $0.1] }), id: \.self) { chunk in
                HStack {
                    ForEach(chunk, id: \.self) { animal in
                        Text(animal)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct AdjacentPairsView_Previews: PreviewProvider {
    static var previews: some View {
        AdjacentPairsView()
    }
}
