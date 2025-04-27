//
//  Conditional.swift
//  PracticeSwift
//
//  Created by Hayal on 25/04/25.
//

import SwiftUI

struct Conditional: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading : Bool = false
    var body: some View {
        VStack(spacing: 20, content: {
            
            Button("IS LOADING", action: {
                isLoading.toggle()
            })
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle Button \(showCircle.description)", action: {
//                showCircle.toggle()
//            })
//            
//            Button("Rectangle Button", action: {
//                showRectangle.toggle()
//            })
//            
//            if showCircle {
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100)
//            }
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.blue)
//                    .frame(width: 200, height: 100)
//                    
//            }
            
        })
    }
}

#Preview {
    Conditional()
}
