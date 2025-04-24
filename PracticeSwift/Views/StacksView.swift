//
//  StacksView.swift
//  PracticeSwift
//
//  Created by Hayal on 29/03/25.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        //VStack
        //HStack
        //ZStack - z index - back to front
//        VStack(alignment: .leading, spacing: 30, content: {
//            Rectangle()
//                .fill(.brown)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 80, height: 80)
//        })
//        
//        HStack(content: {
//            Rectangle()
//                .fill(.brown)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.brown)
//                .frame(width: 100, height: 100)
//        })
//        
//        ZStack(content: {
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.test)
//                .frame(width: 80, height: 80)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 60, height: 60)
//        })
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .leading) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50, alignment: .center)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75, alignment: .center)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25, alignment: .center)
                }
                .background(Color.white)
            }
            .background(Color.gray)
        }
    }
}

#Preview {
    StacksView()
}
