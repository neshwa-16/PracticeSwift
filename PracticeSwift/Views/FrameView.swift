//
//  FrameView.swift
//  PracticeSwift
//
//  Created by Hayal on 27/03/25.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
            .frame(height: 100) // frame of blue
            .background(.blue)
            .frame(width: 150) // frame of purple
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading) // frame of pink
            .background(.pink)
            .frame(height: 400) // frame of green
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top) // frame of yellow
            .background(.yellow)
    }
}

#Preview {
    FrameView()
}
