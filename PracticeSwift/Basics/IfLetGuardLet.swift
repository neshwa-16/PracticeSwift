//
//  IfLetGuardLet.swift
//  PracticeSwift
//
//  Created by neshwa on 20/06/25.
//

import SwiftUI

struct IfLetGuardLet: View {
    
    @State var currentUserID: String? = "user123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView(content: {
            VStack {
                Text("Safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("IfLet & GuardLet")
            .onAppear(perform: loadData)
        })
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "new \(userID)"
                isLoading = false
            })
        } else {
            displayText = "No user ID"
        }
    }
    
    func loadDqta2() {
        guard let userID = currentUserID else {
            displayText = "No user ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "new \(userID)"
            isLoading = false
        })
    }
}

#Preview {
    IfLetGuardLet()
}
