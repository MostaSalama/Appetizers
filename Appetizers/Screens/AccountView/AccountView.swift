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
    @AppStorage("isSignedIn")  var isSignedIn = false

    var body: some View {
        NavigationView {
            
            ZStack {
                Form {
            
                        Section(header:Text("Personal Info")) {
                            
                            TextField("First Name", text: $viewModel.user.firstName)
                                .autocapitalization(.words)
                                
                            TextField("Last Name", text: $viewModel.user.lastName)
                                .autocapitalization(.words)
                                
                            TextField("Email", text: $viewModel.user.email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .autocorrectionDisabled()
                                
                            
                            DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                            
                            Button(action: {
                                viewModel.saveChanges()
                                isSignedIn = true
                            }, label: {
                                Text("Save Changes")
                                    .foregroundStyle(.brandPrimary)
                            })
                        }
                        
                        
                        
                        Section( header: Text("Request")) {
                            Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                            Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    }
                    
                if viewModel.isSignedIn {
                    SignedInUserView(name: viewModel.user.firstName)
                }
            }
            .navigationTitle("Account")
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
}
