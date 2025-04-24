//
//  ScorllViews.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct ScorllViews: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.test)
//                        .frame(height: 300)
//                }
//            }
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 300, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScorllViews()
}
