//
//  AnimationView.swift
//  PracticeSwift
//
//  Created by Hayal on 28/04/25.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimated.toggle()
//                withAnimation(
//                    Animation
//                        .default
//                        //.repeatCount(5, autoreverses: false)
//                        //.delay(2.0)
//                        //.repeatForever(autoreverses: true)
//                )
//                    {
//
//                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 100 : 0)
                //.animation(Animation
                    //.easeIn
                    //.repeatForever(autoreverses: true), value: isAnimated)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationView()
}
