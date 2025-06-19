//
//  Documentation.swift
//  PracticeSwift
//
//  Created by Hayal on 19/06/25.
//

import SwiftUI

struct Documentation: View {
    
    //MARK: properties
    
    @State var data : [String] = [
        "apple", "orange", "banana"
    ]
    @State var showAlert : Bool = false
    
    var body: some View {
        
        //MARK: body
        /// htytyfv
        /// ```
        /// uwidhw   wd     iud i t fdu d
        /// ```
        NavigationView {
            ScrollView {
                Text("Hello, World!")
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .font(.headline)
                    
                }
            }
            .navigationTitle("Documentation")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        showAlert.toggle()
                    }, label: {
                        Text("alert".capitalized)
                    })
                })
            }
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is an alert")
            }
        }
    }
    
    //MARK: functions
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

//MARK: preview
#Preview {
    Documentation()
}
