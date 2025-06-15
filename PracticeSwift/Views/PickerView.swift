//
//  PickerView.swift
//  PracticeSwift
//
//  Created by Hayal on 15/06/25.
//

import SwiftUI

struct PickerView: View {
    
    @State var selection = "18"
    
    var body: some View {
        
//        Picker(selection: $selection,
//               label:
//                HStack{
//                    Text("Filter :")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundStyle(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(.blue)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 10)
//               ,content: {
//            
//        })
//        .pickerStyle(.menu)
        
        
        VStack {
            
            HStack {
                Text("Age :")
                Text(selection)
            }
            
            
            Picker(selection: $selection, content: {
                ForEach(18..<100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundStyle(.purple)
                        .tag("\(number)")
                }
            }, label: {
                Text("Picker")
            })
            .pickerStyle(.wheel)
            //.pickerStyle(.segmented)
            
        }
    }
}

#Preview {
    PickerView()
}
