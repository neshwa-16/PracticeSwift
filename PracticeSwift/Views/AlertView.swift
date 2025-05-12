//
//  AlertView.swift
//  PracticeSwift
//
//  Created by Hayal on 12/05/25.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor = Color.yellow
    @State var alertType : MyAlerts? = nil
    @State var alertTitle: String?
    @State var alertMessage: String?
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("Happy Here") {
                    //alertTitle = "New Alert!!!"
                    //alertMessage = "This is exciting😃🥳"
                    alertType = .success
                    self.showAlert.toggle()
                }
                
                Button("Sad Here") {
                    //alertTitle = "New Alert!!!"
                    //alertMessage = "This is not exciting😞😫"
                    alertType = .error
                    self.showAlert.toggle()
                }
            }
//            .alert("Alert", isPresented: $showAlert, actions: {
//                alertTypeView()
//            })
    //        .alert("Title", isPresented: $showAlert) {
    //            Button("OK", role: .cancel) { }
    //        } message: {
    //            Text("This is a simple alert.")
    //        }
            
            
//            .deleteConfirmationAlert(isPresented: $showAlert, onDelete: {
//                backgroundColor = .purple
//            })
            
            
//            .commonAlert(title: $alertTitle, message: $alertMessage, isPresented: $showAlert, confirmTitle: "OK", confirmRole: .cancel) {
//                backgroundColor = .red
//            }
//
        }
    }
    
    func alertTypeView() -> AlertView {
        switch alertType {
        case .success:
            return AlertView(showAlert: true, alertTitle: "Success", alertMessage: "Item added successfully")
        case .error:
            return AlertView(showAlert: true, alertTitle: "Success", alertMessage: "Item added successfully")
            
        default:
            return AlertView()
            
        }
    }
    
}

#Preview {
    AlertView()
}


extension View {
    func deleteConfirmationAlert(isPresented: Binding<Bool>, onDelete: @escaping () -> Void) -> some View {
        self.alert("Delete Item?", isPresented: isPresented) {
            Button("Delete", role: .destructive, action: onDelete)
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Are you sure you want to delete this item?")
        }
    }
    
    func commonAlert(title: Binding<String?>,
                     message: Binding<String?>,
                     isPresented: Binding<Bool>,
                     confirmTitle: String = "OK",
                     confirmRole: ButtonRole? = nil,
                     onConfirm: @escaping () -> Void = {}) -> some View {
        self.alert(title.wrappedValue ?? "",
                   isPresented: isPresented,
                   actions: {
                       Button(confirmTitle, role: confirmRole, action: onConfirm)
                       Button("Cancel", role: .cancel) { }
                   },
                   message: {
                       Text(message.wrappedValue ?? "")
                   })
    }
}
