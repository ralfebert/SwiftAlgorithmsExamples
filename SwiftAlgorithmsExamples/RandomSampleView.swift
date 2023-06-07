//
//  RandomSampleView.swift
//  SwiftAlgorithmsExamples
//
//  Created by Liraz Kahn on 07/06/2023.
//

import SwiftUI
import Algorithms

struct RandomSampleView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩"]

    @State var count = 2
    var body: some View {
        Stepper("randomSample(ofCount: **\(self.count)**)", value: $count, in: 1 ... 4)
        
        let randomSample = self.choices.randomSample(count: self.count)
        
        HStack {
            ForEach(randomSample, id: \.self) { animal in
                Text(animal)
                    .font(.largeTitle)
            }
        }
    }
}

struct RandomSampleView_Previews: PreviewProvider {
    static var previews: some View {
        RandomSampleView()
    }
}
