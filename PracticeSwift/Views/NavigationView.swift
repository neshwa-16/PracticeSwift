//
//  NavigationView.swift
//  PracticeSwift
//
//  Created by Hayal on 11/05/25.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                NavigationLink("hello world!!!", destination: {
                    Text("Second Screen")
                })
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarTitleDisplayMode(.inline)
            //.toolbar(.hidden)
        }
    }
}

#Preview {
    NavigationViews()
}
