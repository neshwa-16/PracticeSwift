//
//  PaddingAndSpacingView.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct PaddingAndSpacingView: View {
    var body: some View {
//        Text("Hello, World! Notes notitfication, notes uses notificstions to let you know when a shared note has been edited oryou have been mentioned in a note")
//            .background(Color.red)
//            //.padding()
//            .padding(.leading, 30)
//            .background(Color.yellow)
        
        VStack(alignment: .leading){
            Text("Hello, World!")
                .font(.title)
                .padding(.bottom, 20)
            Text("Hello, World! Notes notitfication, notes uses notificstions to let you know when a shared note has been edited oryou have been mentioned in a note")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color.test.opacity(0.3) ,radius: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingAndSpacingView()
}
