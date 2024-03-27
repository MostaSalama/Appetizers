//
//  User.swift
//  Appetizers
//
//  Created by Ninja on 17/03/2024.
//

import SwiftUI

struct User : Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
    var fullName: String {
         firstName + lastName
    }
    
}
