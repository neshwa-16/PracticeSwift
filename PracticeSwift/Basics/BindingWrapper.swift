//
//  BindingWrapper.swift
//  PracticeSwift
//
//  Created by Hayal on 25/04/25.
//

import SwiftUI

struct BindingWrapper: View {
    
    @State var backgroundColor: Color = .red
    @State var title : String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
            
        }
    }
}

struct ButtonView : View {
    
    @Binding var backgroundColor : Color
    @State var buttonColor: Color = .red
    @Binding var title : String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = Color.pink
            title = "New title!!!"
        }, label: {
            Text("BUTTON")
                .foregroundStyle(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal, 20)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}

#Preview {
    BindingWrapper()
}
