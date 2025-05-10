//
//  PopoverView.swift
//  PracticeSwift
//
//  Created by Hayal on 07/05/25.
//

//Sheets
//Animations
//Transitions

import SwiftUI

struct PopoverView: View {
    
    @State var showScreen : Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button", action: {
                    withAnimation {
                        showScreen.toggle()
                    }
                })
                .font(.largeTitle)
                
                Spacer()
            }
            //SHEET
//            .sheet(isPresented: $showScreen, content: {
//                NewScreen()
//            })
            
            //TRANSITION
//            ZStack {
//                if showScreen {
//                    NewScreen(showNewScreen: $showScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        //.animation(.spring(), value: showScreen)
//                }
//            }.zIndex(2.0)
            
            NewScreen(showNewScreen: $showScreen)
                .padding(.top, 100)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showScreen)
        }
    }
}

struct NewScreen : View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                //dismiss()
                withAnimation {
                    showNewScreen.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    PopoverView()
    //NewScreen()
}
