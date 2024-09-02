//
//  AccountView.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewModel()
    @AppStorage("user") private var userData : Data?
    @FocusState private var focusedTextField : formTextField?
    
    enum formTextField {
        case firstName , lastName , email
    }

    var body: some View {
        NavigationView {
            
            ZStack {
                Form {
            
                        Section(header:Text("Personal Info")) {
                            
                            TextField("First Name", text: $viewModel.user.firstName)
                                .autocapitalization(.words)
                                .focused($focusedTextField ,equals: .firstName)
                                .onSubmit { focusedTextField = .lastName }
                                .submitLabel(.next)
                                
                            TextField("Last Name", text: $viewModel.user.lastName)
                                .autocapitalization(.words)
                                .focused($focusedTextField ,equals: .lastName)
                                .onSubmit { focusedTextField = .email }
                                .submitLabel(.next)
                            
                            TextField("Email", text: $viewModel.user.email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .autocorrectionDisabled()
                                .focused($focusedTextField ,equals: .email)
                                .submitLabel(.continue)
                                .onSubmit { focusedTextField = nil }
                            
                            DatePicker("Birthday",
                                       selection: $viewModel.user.birthDate,
                                       in: Date().oneHundredTenYearsAgo...Date().eightenYearsAgo,
                                       displayedComponents: .date)
                            
                            Button(action: {
                                viewModel.saveChanges()
                            }, label: {
                                Text("Save Changes")
                                    
                            })
                        }
                        
                        
                        
                        Section( header: Text("Request")) {
                            Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                            Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .accent))
                    }
                .navigationTitle("Account")
                .toolbar{
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Dismiss") { focusedTextField = nil }
                    }
                }
                if userData != nil {
                    SignedInUserView(name: viewModel.user.firstName)
                }
            }
            
        }
        .onAppear{
                viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AccountView()
        .environmentObject(OrderViewModel())
}
