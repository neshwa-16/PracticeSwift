//
//  Text.swift
//  PracticeSwift
//
//  Created by Hayal on 26/03/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello World!, SwiftUI, Swift, iOS, macOS, watchOS, tvOS, iOS")
            //.foregroundStyle(.conicGradient(Gradient(colors: [.red, .blue]), center: .center, angle: .degrees(40)))
        //Text("Hello World!, SwiftUI, Swift, iOS, macOS, watchOS, tvOS, iOS".capitalized)
            //.font(.largeTitle)
            //.fontWeight(.heavy)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            //.strikethrough(true, color: .green)
            //.italic()
            //.font(.system(size: 100, weight: .thin, design: .serif))
            //.multilineTextAlignment(.trailing)
            //.baselineOffset(10) // line spacing
            //.kerning(10) // letter spacing
            .foregroundStyle(.cyan) // text color
            //.padding(50)
            .frame(width: 100, height: 100, alignment: .topTrailing)
            //.minimumScaleFactor(0.1) - keeps the text with in the frame, text size won't change even applied, tries to the whole text within the frame
    }
}

#Preview {
    TextView()
}
