//
//  Alert.swift
//  Appetizers
//
//  Created by Ninja on 29/02/2024.
//

import Foundation
import SwiftUI

struct AlertItem : Identifiable{
    let id = UUID()
    let title : Text
    let message: Text
    let dismissButton : Alert.Button
}

struct AlertContext {
       
    static let invalidForm = AlertItem(title: Text("Invalid Form!"),
                                        message: Text("Please make sure all fields have been filled out"),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email!"),
                                        message: Text("Please Make sure your email is correct"),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidData        = AlertItem(title: Text("Server Error"),
                                                  message: Text("The data recieved from the server was invalid. Please contact the support"),
                                              dismissButton: .default(Text("OK")))
        
    static let invalidResponse   = AlertItem(title: Text("Server Error"),
                                                  message: Text("Invalid response from the server. Please try again later or contact the support."),
                                                  dismissButton: .default(Text("OK")))
    
    static let invalidURL         = AlertItem(title: Text("Server Error"),
                                                  message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                                  dismissButton: .default(Text("OK")))
    
    static let unableToComplete  = AlertItem(title: Text("Server Error"),
                                                  message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                                  dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved!"),
                                           message: Text("Your profile information was successfully saved."),
                                           dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error!"),
                                           message: Text("There was an error saving or retrieving your profile"),
                                           dismissButton: .default(Text("Ok")))
}
