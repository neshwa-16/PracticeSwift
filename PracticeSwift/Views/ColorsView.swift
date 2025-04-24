//
//  ColorsView.swift
//  PracticeSwift
//
//  Created by Hayal on 26/03/25.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            //.fill(.orange)
            //.fill(.primary)
            .fill(
                //Color(.lightGray)
                Color("testColor")
            )
            //shadow(color: .gray, radius: 10, x: -10, y: -10)
            //.shadow(color: Color("testColor"), radius: 20)
            .shadow(color: .red, radius: 20).opacity(0.3)
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    ColorsView()
}
