//
//  SpacerView.swift
//  PracticeSwift
//
//  Created by Hayal on 30/03/25.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.test)
                .frame(width: 100, height: 100)
            Spacer()
                .frame(height: 10)
                .background(Color.yellow)
            Rectangle()
                .fill(.test)
                .frame(width: 100, height: 100)
        }
        .background(Color.gray)
    }
}

#Preview {
    SpacerView()
}
