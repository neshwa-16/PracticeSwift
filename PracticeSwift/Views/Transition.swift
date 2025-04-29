//
//  Transition.swift
//  PracticeSwift
//
//  Created by Hayal on 29/04/25.
//

import SwiftUI

struct Transition: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    withAnimation(.easeInOut) {
                        showModal.toggle()
                    }
                }
                Spacer()
//                RoundedRectangle(cornerRadius: 30)
//                    .fill(Color.blue)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showModal ? 1 : 0)
//                    .animation(.easeInOut, value: showModal)
                
                if showModal {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.blue)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(.slide)
                        //.transition(.move(edge: .bottom))
                        //.animation(.easeInOut, value: showModal)
                        //.transition(AnyTransition.scale.animation(.easeInOut))
                        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeOut)))
                        .animation(.spring, value: showModal)
                        
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Transition()
}
