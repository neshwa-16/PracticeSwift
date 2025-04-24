//
//  ImageView.swift
//  PracticeSwift
//
//  Created by Hayal on 27/03/25.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
//        Image("bridge")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
            //.clipShape(Circle())
        Image("google")
            //.renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundStyle(.orange)
            
            
    }
}

#Preview {
    ImageView()
}
