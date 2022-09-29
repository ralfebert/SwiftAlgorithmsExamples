import SwiftUI
import Algorithms

struct RandomSampleView: View {
    
    let choices = ["🐋", "🐊", "🐅", "🦩"]
    
    @State var count = 2
    
    var body: some View {
        Stepper("randomSample(ofCount: **\(self.count)**)", value: $count, in: 1 ... self.choices.count)
        
        HStack() {
            ForEach(choices.randomSample(count: count), id: \.self) { animal in
                Text(animal)
                    .font(.largeTitle)
            }
            .animation(.default, value: count)
        }
    }
}

struct RandomSampleView_Previews: PreviewProvider {
    static var previews: some View {
        RandomSampleView()
    }
}
