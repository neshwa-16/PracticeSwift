//
//  ProfileView.swift
//  PracticeSwift
//
//  Created by Hayal on 23/07/25.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUsergender : Int?
    @AppStorage("signed-in") var userSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This User is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUsergender == 1 ? "Male" : "Female" )")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundStyle(.orange)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
        
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUsergender = nil
        withAnimation(.spring()) {
            userSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
