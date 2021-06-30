import Algorithms
import SwiftUI

struct RotateToStartAtView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var startAt = 0

    var rotatedList: [String] {
        var choices = self.choices
        choices.rotate(toStartAt: startAt)
        return choices
    }

    var body: some View {
        Stepper("rotate(toStartAt: **\(self.startAt)**)", value: $startAt, in: 0 ... self.choices.count)

        HStack {
            ForEach(self.rotatedList, id: \.self) { item in
                Text(item)
                    .font(.largeTitle)
            }
            .animation(.default)
        }
    }
}

struct RotateToStartAtView_Previews: PreviewProvider {
    static var previews: some View {
        RotateToStartAtView()
    }
}
