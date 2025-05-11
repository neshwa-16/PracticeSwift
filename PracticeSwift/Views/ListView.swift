//
//  ListView.swift
//  PracticeSwift
//
//  Created by Hayal on 11/05/25.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits = ["apple", "banana", "orange", "grape"]
    
    @State var veggies = ["tomato", "carrot", "beet", "broccoli"]
    
    var body: some View {
        
        NavigationView {
            List {
//                Section(content: {
//                    ForEach(fruits, id: \.self) { fruit in
//                        Text(fruit.capitalized)
//                    }
//                    .onDelete(perform: delete)
//                    .onMove(perform: move)
//                }, header: {
//                    Text("Fruits")
//                })
                Section(header:
                    Text("Fruits")
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                            
                        }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggy in
                       Text(veggy.capitalized)
                    }
                }
            }
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocert List")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton }
            }
        }
        .tint(.red)
    }
    
    var addButton : some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruits.append("Cocunut")
    }
}

#Preview {
    ListView()
}
