//
//  ContentView.swift
//  Oreastrum
//
//  Created by tokizo on 2020/11/30.
//

import SwiftUI

struct ContentView: View {
    @State var redColor: Double = 127
    @State var greenColor: Double = 127
    @State var blueColor: Double = 127
    @State var isEditingList: [Bool] = [false, false, false]
    
    var body: some View {
        VStack {
            // TODO: UIViewみたいなただの一枚ペラにしたい
            Text("aaaaaaaaaaaaaa")
                .background(Color(red: redColor/255,
                                       green: greenColor/255,
                                       blue: blueColor/255))
                .frame(height: 100)
            
            // TODO: 以下の3つのHStackを抽象化したい
            HStack {
                Slider(value: $redColor, in: 0...255, step: 1.0, onEditingChanged: { flag in
                    self.isEditingList[0] = flag
                })
                    .accentColor(.red)
                Text("\(Int(self.redColor))")
                    .fontWeight(self.isEditingList[0] ? .semibold : .regular)
                    .frame(width: 75)
                    
            }
            .padding()
            
            HStack {
                Slider(value: $greenColor, in: 0...255, step: 1.0, onEditingChanged: { flag in
                    self.isEditingList[1] = flag
                })
                    .accentColor(.green)
                Text("\(Int(self.greenColor))")
                    .fontWeight(self.isEditingList[1] ? .semibold : .regular)
                    .frame(width: 75)
                    
            }
            .padding()
            
            HStack {
                Slider(value: $blueColor, in: 0...255, step: 1.0, onEditingChanged: { flag in
                    self.isEditingList[2] = flag
                })
                    .accentColor(.blue)
                Text("\(Int(self.blueColor))")
                    .fontWeight(self.isEditingList[2] ? .semibold : .regular)
                    .frame(width: 75)
                    
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
