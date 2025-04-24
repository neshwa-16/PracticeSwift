//
//  Initializer.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor : Color
    let count : Int
    let title : String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else if fruit == .banana {
            self.title = "Bananas"
            self.backgroundColor = .yellow
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange

        }
    }
    
    enum Fruit {
        case apple
        case banana
        case orange
    }
    
    var body: some View {
        VStack(spacing: 15){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    HStack {
        Initializer(count: 54, fruit: .apple)
        Initializer(count: 100, fruit: .banana)
    }
}
