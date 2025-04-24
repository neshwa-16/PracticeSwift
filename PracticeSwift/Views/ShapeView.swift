//
//  ShapeView.swift
//  PracticeSwift
//
//  Created by Hayal on 26/03/25.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 25)
            //.fill(Color.blue)
            //.foregroundStyle(.brown)
            //.stroke()
            //.stroke(lineWidth: 10)
            //.stroke(Color.red, lineWidth: 20)
            //.stroke(style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [15]))
            //.trim(from: 0.5, to: 1.0)
            .frame(width: 200, height: 100, alignment: .leading)
        
    }
}

#Preview {
    ShapeView()
}
