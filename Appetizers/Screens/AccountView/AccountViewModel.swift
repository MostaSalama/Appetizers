//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ninja on 12/03/2024.
//

import SwiftUI

final class AccountViewModel : ObservableObject {
    
    @AppStorage("user") private var userData : Data?    
    @Published  var alertItem : AlertItem?
    @Published  var user = User()
    
    
    func saveChanges() {
        
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        
        guard let userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
            
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm : Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return true
        }
        
        return true
    }
    
    
    
}
