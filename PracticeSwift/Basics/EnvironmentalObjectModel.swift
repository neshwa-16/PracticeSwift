//
//  EnironmentalObjectModel.swift
//  PracticeSwift
//
//  Created by Hayal on 12/07/25.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray : [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "MacBook", "iMac", "Apple Watch"])
    }
}

struct EnvironmentalObjectModel: View {
    
    @StateObject var viewModel : EnvironmentViewModel = .init()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailsView(selectedItem: item), label: {
                        Text(item)
                    })
                }
                .navigationTitle("iOS Devices")
            }
        }
        .environmentObject(viewModel)
    }
}

struct DetailsView : View {
    
    let selectedItem : String
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: {
                FinalView()
            }, label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            })
        }
        
    }
}

struct FinalView : View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            //background
            LinearGradient(
                gradient: Gradient(colors: [Color.cyan, Color.indigo]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentalObjectModel()
}
