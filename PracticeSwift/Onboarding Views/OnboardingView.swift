//
//  OnboardingView.swift
//  PracticeSwift
//
//  Created by Hayal on 12/07/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var OnboardingState: Int = 0
    @State var name : String = ""
    @State var age : Double = 50
    @State var gender : Int = 1
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUsergender : Int?
    @AppStorage("signed-in") var userSignedIn: Bool = false
    
    let transition : AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                switch OnboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.green)
                }
            }
            
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30)
            
        }
        .alert("Alert", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(alertTitle)
        }
    }
    
    
}

extension OnboardingView {
    
    private var bottomButton : some View {
        Text(OnboardingState == 0 ? "SIGN UP" :
                OnboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundStyle(.orange)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                handleNextButtonTapped()
            }
    }
    
    private var welcomeSection : some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is the no. 1 app tp find your match online")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection : some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection : some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection : some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Picker(selection: $gender, content: {
                Text("Male").tag(1)
                Text("Female").tag(2)
            }, label: {
                Text(gender == 1 ? "Male" : "Female")
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

extension OnboardingView {
    
    func handleNextButtonTapped() {
        
        switch OnboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert("Your name must be at least 3 characters long! 😩")
                return
            }
        default:
            break
        }
        
        if OnboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                OnboardingState += 1
            }
        }
    }
    
    func showAlert(_ title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUsergender = gender
        withAnimation(.spring()) {
            userSignedIn = true
        }
    }
    
}

#Preview {
    OnboardingView()
        .background(.orange)
}


