//
//  SafeArea.swift
//  PracticeSwift
//
//  Created by Hayal on 23/04/25.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10, content: { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.blue)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                })
            }
            //.background(.green)
        }
        .background(.red)
        //.ignoresSafeArea(.keyboard)
        //.background(ignoresSafeAreaEdges: .leading)
//        ZStack {
//            Color.blue
//                //.ignoresSafeArea(.all)
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .padding(.top, 50)
//                Spacer()
//            }
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
    }
}

#Preview {
    SafeArea()
}
