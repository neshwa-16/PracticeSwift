//
//  GradientView.swift
//  PracticeSwift
//
//  Created by Hayal on 27/03/25.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color(.orange)
//                LinearGradient(colors: [.red, .yellow], startPoint: .leading, endPoint: .trailing)
//                RadialGradient(colors: [.red, .yellow], center: .center, startRadius: 5, endRadius: 300)
                AngularGradient(gradient: Gradient(colors: [.red, .yellow]), center: .center, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientView()
}
