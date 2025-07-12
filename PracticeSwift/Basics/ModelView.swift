//
//  StructView.swift
//  PracticeSwift
//
//  Created by Hayal on 29/06/25.
//

import SwiftUI

struct UserModel : Identifiable {
    let id : String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isVerified : Bool
}

struct ModelView: View {
    
    @State var users : [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris2009", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 29, height: 20)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline )
                        }
                    }
                    .padding(.vertical, 15.0)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        })
    }
}

#Preview {
    ModelView()
}
