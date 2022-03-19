//
//  ContentView.swift
//  First Project
//
//  Created by Devin Allen on 2/18/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .foregroundColor(.blue)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("$")
                TextField("Amount", text: $total)
                    .foregroundColor(.red)
                
               // Text("\(total)")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            } else {
                Text("Please Enter a Numberical Value")
                    .foregroundColor(.green)

            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

