//
//  ExtractedFunctions.swift
//  PracticeSwift
//
//  Created by Hayal on 24/04/25.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Hello, World!")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .pink
    }
}

#Preview {
    ExtractedFunctions()
}
