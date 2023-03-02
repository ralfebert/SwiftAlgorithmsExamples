//
//  chainView.swift
//  SwiftAlgorithmsExamples
//
//  Created by Hasan Hayder on 2023-03-02.
//

import Algorithms
import SwiftUI

struct chainView: View {
    let choices = [10, 20, 50, 70]
    
    @State var count = 2
    
    var body: some View {
        
        let choiceSuffix = choices.suffix(while: { $0 > 30 })
        VStack {
            Text(String("\(choiceSuffix)"))
        }
                                           }
                                           }
    


struct chainView_Previews: PreviewProvider {
    static var previews: some View {
        chainView()
    }
}
