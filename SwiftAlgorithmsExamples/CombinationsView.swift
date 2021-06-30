import Algorithms
import SwiftUI

struct CombinationsView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var count = 2

    var body: some View {
        Stepper("combinations(ofCount: **\(self.count)**)", value: $count, in: 1 ... 4)

        VStack(alignment: .leading) {
            ForEach(Array(self.choices.combinations(ofCount: self.count)), id: \.self) { chunk in
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

struct CombinationsView_Previews: PreviewProvider {
    static var previews: some View {
        CombinationsView()
    }
}
