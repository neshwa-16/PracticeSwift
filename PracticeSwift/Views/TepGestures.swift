//
//  TepGestures.swift
//  PracticeSwift
//
//  Created by Hayal on 29/06/25.
//

import SwiftUI

struct TepGestures: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40, content: {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            })
            
            Text("Tap gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            //TapGesture:-
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            // tap the "count" number of times to perfomr the tap gesture
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        })
        .padding(40)
    }
}

#Preview {
    TepGestures()
}
