//
//  IntroView.swift
//  PracticeSwift
//
//  Created by Hayal on 12/07/25.
//

import SwiftUI

struct IntroView: View {
    
    //@Environment(\.screenSize) private var screenSize
    @AppStorage("signed-in") var userSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            GeometryReader { geometry in
                RadialGradient(
                    gradient: Gradient(colors: [.yellow, .orange]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: geometry.size.height
                )
                .ignoresSafeArea()
            }
            
            if userSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top),
                                            removal: .move(edge: .bottom)))
            }
        }
        .animation(.spring, value: userSignedIn)
    }
}

#Preview {
    IntroView()
}
