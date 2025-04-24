//
//  StateWrapper.swift
//  PracticeSwift
//
//  Created by Hayal on 24/04/25.
//

import SwiftUI

struct StateWrapper: View {
    
    @State var backgroundColor: Color = .blue
    @State var title = "My Title"
    @State var count = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20, content: {
                Text(title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack{
                    Button("Button 1", action: {
                        count += 1
                        self.title = "To Red"
                        backgroundColor = .red
                    })
                    
                    Button("Button 2", action: {
                        count -= 1
                        self.title = "To Green"
                        backgroundColor = .green
                    })
                }
            })
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateWrapper()
}
