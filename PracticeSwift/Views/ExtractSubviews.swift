//
//  ExtractSubviews.swift
//  PracticeSwift
//
//  Created by Hayal on 24/04/25.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            stackView()
          
        }
    }
}

#Preview {
    ExtractSubviews()
}

struct myView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct stackView: View {
    var body: some View {
        HStack {
            myView(title: "apple", count: 23, color: .red)
            myView(title: "orange", count: 10, color: .orange)
            myView(title: "grape", count: 45, color: .purple)
        }
    }
}

struct ExtractedView: View {
    var body: some View {
        stackView()
    }
}
