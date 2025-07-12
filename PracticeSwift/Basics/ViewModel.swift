//
//  ViewModel.swift
//  PracticeSwift
//
//  Created by neshwa on 29/06/25.
//

import SwiftUI

struct FruitModel : Identifiable {
    let id : String = UUID().uuidString
    let name: String
    let count: Int
}

class FruiViewModel : ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 30)
        let fruit2 = FruitModel(name: "Banana", count: 44)
        let fruit3 = FruitModel(name: "Watermelon", count: 5)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        })
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModel: View {
    
    //used this on creation or init
    @StateObject var fruitViewModel : FruiViewModel = FruiViewModel()
    
    //use this for subviews
    //@ObservedObject var fruitViewModel : FruiViewModel = FruiViewModel()
    
//    @State var fruitArray: [FruitModel] = [
//        FruitModel(name: "Apple", count: 50)
//    ]
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    NavigationLink(destination: SecondScreenView( fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                            .foregroundStyle(.black)
                    })
                    
                })
            }
            .onAppear() {
                //fruitViewModel.getFruits()
            }
        }
    }
}

struct SecondScreenView : View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel : FruiViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Go back!!!")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                })
            }
            
        }
    }
}

#Preview {
    ViewModel()
}
