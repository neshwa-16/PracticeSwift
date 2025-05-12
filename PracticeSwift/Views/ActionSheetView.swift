//
//  ActionSheetView.swift
//  PracticeSwift
//
//  Created by Hayal on 13/05/25.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showActionSheet : Bool = false
    
    var body: some View {
        Button("Click Here", action: {
            showActionSheet.toggle()
        })
        .confirmationDialog("Are you sure?", isPresented: $showActionSheet, titleVisibility: .visible) {
            Button("Delete", role: .destructive) {
                // Delete action
            }
            Button("Duplicate") {
                print("Duplicate tapped")
            }
            Button("Edit") {
                print("Edit tapped")
            }
            Button("Cancel", role: .cancel) { }
        }

    }
}

#Preview {
    ActionSheetView()
}

