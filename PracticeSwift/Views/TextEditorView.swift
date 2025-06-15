//
//  TextEditorView.swift
//  PracticeSwift
//
//  Created by Hayal on 15/06/25.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var texteditorText: String = "string text"
    @State var savedText : String = ""
    
    var body: some View {
        
        NavigationView(content: {
            VStack(content: {
                TextEditor(text: $texteditorText)
                    .frame(height: 200)
                //colorMultiply only works for text editor if textcolor is black. and backgroundcolor doesnt work for texeditor.
                    .colorMultiply(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button(action: {
                    savedText = texteditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                Text(savedText)
                Spacer()
            })
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor")
        })
    }
}

#Preview {
    TextEditorView()
}
