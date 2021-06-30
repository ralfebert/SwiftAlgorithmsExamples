import Algorithms
import SwiftUI

struct ChunksOfCountView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var chunkByCount = 2

    var body: some View {
        Stepper("chunks(ofCount: **\(self.chunkByCount)**)", value: $chunkByCount, in: 1 ... 3)

        VStack(alignment: .leading) {
            ForEach(self.choices.chunks(ofCount: self.chunkByCount), id: \.self) { chunk in
                HStack {
                    ForEach(chunk, id: \.self) { item in
                        Text(item)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct ChunksOfCountView_Previews: PreviewProvider {
    static var previews: some View {
        ChunksOfCountView()
    }
}
