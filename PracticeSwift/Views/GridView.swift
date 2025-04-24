//
//  LazyHGrid.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct LazyGrids: View {
    
    let columns : [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
        
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
        
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 20, alignment: nil),
        GridItem(.flexible(), spacing: 30, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 499)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 10,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                        Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                        
                    ) {
                        ForEach(0..<50) {
                            index in
                            Rectangle()
                                .fill(.black)
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                        Text("Section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                        
                    ) {
                        ForEach(0..<50) {
                            index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    }
                }
            )
            
//            LazyVGrid(columns: columns) {
//                ForEach (0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                        
//                }
//            }
        }
    }
}

#Preview {
    LazyGrids()
}
