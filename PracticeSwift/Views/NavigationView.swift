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
                    ScondScreen()
                })
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    HStack(content: {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    })
                })

                ToolbarItem(placement: .topBarTrailing, content: {
                    NavigationLink(destination: ScondScreen(), label: {
                        Image(systemName: "gear")
                    })
                    .tint(.red)
                })
                
            }
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarTitleDisplayMode(.inline)
            //.toolbar(.hidden)
        }
    }
}

struct ScondScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .toolbar(.hidden)
            
            VStack {
                Button("Back Button", action: {
                    dismiss()
                })
                NavigationLink("Click here", destination: {
                    Text("Third Screen")
                })
            }
            
            
        }
    }
}

#Preview {
    NavigationViews()
}

