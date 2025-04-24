//
//  IconsView.swift
//  PracticeSwift
//
//  Created by Hayal on 27/03/25.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.resizable()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFit()
            //.scaledToFill()
            .font(.largeTitle)
            //.font(.system(size: 200))
            .foregroundStyle(.brown)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsView()
}
