//
//  UniqueView.swift
//  SwiftAlgorithmsExamples
//
//  Created by Liraz Kahn on 07/06/2023.
//

import SwiftUI
import Algorithms

struct UniqueView: View {
    let choices = ["🐋", "🐊", "🐅", "🦩", "🐋", "🐊", "🐅", "🦩"]

    var body: some View {
        Text("unique()")
        HStack {
               let uniqued = choices.uniqued(on: { $0.first })
            ForEach(uniqued, id: \.self){ item in
                Text(item)
                    .font(.largeTitle)
            }
        }
    }
}

struct UniqueView_Previews: PreviewProvider {
    static var previews: some View {
        UniqueView()
    }
}
