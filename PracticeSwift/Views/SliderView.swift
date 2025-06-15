//
//  SliderView.swift
//  PracticeSwift
//
//  Created by Hayal on 16/06/25.
//

import SwiftUI

struct SliderView: View {
    
    @State var sliderviewValue: Double = 0
    @State var color : Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            //Text("\(sliderviewValue)")
            Text(String(format: "%.0f", sliderviewValue))
                .foregroundStyle(color)
            //Slider(value: $sliderviewValue, in: 0...100, step: 0.5)
                .tint(.red)
            //Slider(value: $sliderviewValue)
            Slider(
                value: $sliderviewValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.headline)
                    .foregroundStyle(.yellow)
                ,
                maximumValueLabel:
                    Text("5")
                    .font(.headline)
                    .foregroundStyle(.orange)
                ,
                label: {
                    Text("Rating")
            })
            .tint(.red)
            .padding()
        }
    }
}

#Preview {
    SliderView()
}
