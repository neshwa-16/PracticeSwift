//
//  OnAppear.swift
//  PracticeSwift
//
//  Created by Hayal on 20/06/25.
//

import SwiftUI

struct OnAppear: View {
    
    @State var myText = "START"
    @State var count : Int = 0
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .foregroundColor(.orange)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    myText = "Hello World"
                })
            })
            .onDisappear(perform: {
                myText = "End"
            })
            .navigationTitle("onAppear(\(count))")
        }
    }
}

#Preview {
    OnAppear()
}
