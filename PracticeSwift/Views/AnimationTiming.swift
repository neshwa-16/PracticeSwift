//
//  AnimationTiming.swift
//  PracticeSwift
//
//  Created by Hayal on 29/04/25.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating : Bool = false
    let timing : Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.spring(), value: isAnimating)
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.7,
                                   blendDuration: 1.0), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.blue)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.blue)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.blue)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.blue)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTiming()
}
