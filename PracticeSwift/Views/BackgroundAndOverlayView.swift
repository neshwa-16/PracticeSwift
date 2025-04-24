//
//  BackgroundAndOverlayView.swift
//  PracticeSwift
//
//  Created by Hayal on 27/03/25.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
        //MARK: Background
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.frame(width: 100, height: 100)
            //.background(
                //Color("testColor")
//                LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .leading, endPoint: .bottomTrailing)
//                Circle()
//                    .fill(.yellow)
//            )
//            .frame(width: 120, height: 120, alignment: .bottom)
//            .background(
//                Circle()
//                    //.fill(.red)
//                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomLeading))
            //)
        //MARK: Overlay
//        Circle()
//            .fill(.yellow)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 110, height: 110, alignment: .center)
//            )
        
//        Rectangle()
//            .fill(.test)
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .center, content: {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 50, height: 50)
//            })
//            .background(
//                Rectangle()
//                    .fill(.cyan)
//                    .frame(width: 200, height: 200)
//                ,alignment: .bottom
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.gray,radius: 10, x: 10, y: -10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.red)
                            .frame(width: 30, height: 30)
                            .overlay(alignment: .center, content: {
                                Text("5")
                                    .font(.body)
                                    .foregroundStyle(Color.white)
                            })
                            
                    })
            )
            
    }
}

#Preview {
    BackgroundAndOverlayView()
}
