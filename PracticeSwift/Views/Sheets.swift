//
//  Sheets.swift
//  PracticeSwift
//
//  Created by Hayal on 30/04/25.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Show Sheet")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
            /// Do not add conditional logic here
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
            }, label: {
//                Text("Show Sheet")
//                    .foregroundStyle(.red)
//                    .font(.headline)
//                    .padding(20)
//                    .background(Color.white)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

#Preview {
    Sheets()
}
