//
//  ButtonsView.swift
//  PracticeSwift
//
//  Created by Hayal on 23/04/25.
//

import SwiftUI

struct ButtonsView: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!", action: {
                self.title = "You pressed me!"
            })
            .tint(.red)
            
            
            Button(action: {
                self.title = "You pressed me again!"
            }, label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "You pressed me again again!"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    })
            })
            
            Button(action: {
                self.title = "Oooopsss!"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 3)
                    )
            })
        }
    }
}

#Preview {
    ButtonsView()
}
