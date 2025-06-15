//
//  StepperView.swift
//  PracticeSwift
//
//  Created by Hayal on 16/06/25.
//

import SwiftUI

struct StepperView: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 100 + widthIncrement, height: 100)
//                .onTapGesture {
//                    self.widthIncrement += 10
//                }
            
            Stepper("Stepper", onIncrement: {
                incrementWidth(amount: 100)
            }, onDecrement: {
                decrementWidth(amount: 100)
            })
            .padding(50)
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
    func decrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement -= amount
        }
    }
}

#Preview {
    StepperView()
}
