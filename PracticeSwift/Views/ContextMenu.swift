//
//  ContextMenu.swift
//  PracticeSwift
//
//  Created by Hayal on 05/06/25.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI")
                .font(.headline)
            Text("Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                HStack(content: {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                })
            })
        })
       
    }
}

#Preview {
    ContextMenu()
}
