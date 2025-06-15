//
//  TextfieldView.swift
//  PracticeSwift
//
//  Created by Hayal on 06/06/25.
//

import SwiftUI

struct TextfieldView: View {
    
    @State var textfieldText: String = ""
    @State var dataarray : [String] = []
    
    var body: some View {
        
        NavigationView(content: {
            VStack {
                TextField("Type somthing herre", text: $textfieldText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    if checktext() {
                        save()
                    } 
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundColor(.white)
                        .font(.headline)
                        
                })
                
                ForEach(dataarray, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield")
        })
    }
    
    func checktext() -> Bool {
        if textfieldText.count >= 3 {
            return false
        }
        return true
    }
    
    func save() {
        dataarray.append(textfieldText)
        textfieldText = ""
    }
}

#Preview {
    TextfieldView()
}
