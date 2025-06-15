//
//  DatePickerView.swift
//  PracticeSwift
//
//  Created by Hayal on 16/06/25.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2025)) ?? Date()
    let endingDate : Date = Date()
    
    var dateFormatter : DateFormatter {
        let Formatter = DateFormatter()
        //Formatter.dateStyle = .short
        Formatter.dateStyle = .full
        Formatter.timeStyle = .medium
        return Formatter
    }
    
    var body: some View {
//        DatePicker("Select a date", selection: $selectedDate,
//                   displayedComponents: [.date, .hourAndMinute])
//            .tint(.red)
//            .padding(20)
//            //.datePickerStyle(.compact)
//            .datePickerStyle(.graphical)
//            //.datePickerStyle(.wheel)
        
        VStack(spacing: 20){
            Text("Selected date is: \(selectedDate, style: .date)")
            Text(dateFormatter.string(from: selectedDate))
                .font(.headline)
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(.compact)
        }
        .padding()
    }
}

#Preview {
    DatePickerView()
}
