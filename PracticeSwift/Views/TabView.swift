//
//  TabView.swift
//  PracticeSwift
//
//  Created by Hayal on 19/06/25.
//

import SwiftUI

struct TabsView: View {
    
    @State var selectedTab: Int = 0
    let icons : [String] = [
        "heart.fill", "flame.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [.test, .cyan]), center: .bottomLeading, startRadius: 6, endRadius: 600)
        )
        .frame(height: 400)
        .tabViewStyle(.page)
        
      /*  TabView {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.yellow)
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.orange)
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.red)
        }
        .frame(height: 300)
        .tabViewStyle(.page) */
        
       /* TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("Second")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("Third")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(2)
        }
        .tint(.cyan) */
    }
}

#Preview {
    TabsView()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.container, edges: .top)
            VStack(spacing: 20) {
                Text("First")
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Tap Me")
                        .font(.headline)
                        .foregroundStyle(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            
            
        }
    }
}
