//
//  TernaryOperator.swift
//  PracticeSwift
//
//  Created by Hayal on 28/04/25.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Text(isStartingState ? "Ending State" : "Starting State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperator()
}
