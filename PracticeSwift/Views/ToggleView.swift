//
//  ToggleView.swift
//  PracticeSwift
//
//  Created by Hayal on 15/06/25.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isToggleOn = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status :")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            .padding()
            Toggle(isOn: $isToggleOn, label: {
                Text("Change Status")
            })
            //.toggleStyle(.button)
            .toggleStyle(.switch)
            .tint(.test)
            .padding(.horizontal, 100)
        }
        Spacer()
    }
}

#Preview {
    ToggleView()
}
