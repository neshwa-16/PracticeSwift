//
//  DarkModeView.swift
//  PracticeSwift
//
//  Created by Neshwa on 19/06/25.
//

import SwiftUI

struct DarkModeView: View {
    
    @State private var selectedItem: String?

    let items = ["One", "Two", "Three"]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20, content: {
                    Text("This color is primary")
                        .foregroundStyle(.primary)
                    Text("This color is secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                    Text("This color is red")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                })
            }
            .navigationTitle("Dark Mode")
        }
        
       /* NavigationStack {
                   List {
                       NavigationLink("Go to Detail", value: "Hello from Detail")
                   }
                   .navigationTitle("Home")
                   .navigationDestination(for: String.self) { value in
                       Text(value)
                   }
               } */
        
       /* NavigationSplitView {
                    List(items, id: \.self, selection: $selectedItem) { item in
                        Text(item)
                    }
                    .navigationTitle("Items")
                } detail: {
                    if let selected = selectedItem {
                        Text("Selected: \(selected)")
                    } else {
                        Text("Select an item")
                    }
                } */
    }
}

#Preview {
    Group {
        DarkModeView()
            .preferredColorScheme(.light)

        DarkModeView()
            .preferredColorScheme(.dark)

    }
}
