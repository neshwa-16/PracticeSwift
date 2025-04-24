//
//  ForEachView.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct ForEachView: View {
    
    let data : [String] = ["Hi", "Hello", "Hey everyone"]
    let myString : String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .fill(.test)
//                        .frame(width: 30, height: 30)
//                    Text("Hi \(index)")
//                }
//                
//            }
            
//            ForEach(Array(data.indices), id: \.self) { index in
//                Text("\(data[index]) : \(index)")
//            }

            ForEach(Array(data.enumerated()), id: \.element) { index, value in
                Text("\(value) : \(index)")
            }

//            ForEach(0..<100){ index in
//                Circle()
//                    .fill(.test)
//                    .frame(width: 30, height: 30)
//            }
        }
    }
}

#Preview {
    ForEachView()
}
