import Algorithms
import SwiftUI

struct PermutationsView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var count = 2

    var body: some View {
        Stepper("permutations(ofCount: **\(self.count)**)", value: $count, in: 1 ... 4)

        VStack(alignment: .leading) {
            ForEach(Array(self.choices.permutations(ofCount: self.count)), id: \.self) { chunk in
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

struct PermutationsView_Previews: PreviewProvider {
    static var previews: some View {
        PermutationsView()
    }
}
