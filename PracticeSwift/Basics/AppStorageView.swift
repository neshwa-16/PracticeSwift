//
//  AppStorageView.swift
//  PracticeSwift
//
//  Created by Hayal on 12/07/25.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("name") var currentuser: String?
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(currentuser ?? "Add Name Here")
            
            if let name = currentuser {
                Text(name)
            }
            
            Button("save".uppercased()) {
                let name = "Hayal"
                currentuser = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear() {
            currentuser = UserDefaults.standard.string(forKey: "name")
        }
    }
}

#Preview {
    AppStorageView()
}
