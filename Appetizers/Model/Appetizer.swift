//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import Foundation

struct Appetizer : Codable , Identifiable {
    let id : Int
    let name : String
    let description : String
    let price : Double
    let imageURL : String
    let calories : Int
    let protein : Int
    let carbs : Int
}

struct AppetizersResponse : Codable {
    let request : [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    
    
    static let appetizers = [sampleAppetizer ,sampleAppetizer , sampleAppetizer , sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Test Appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Test Appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]
}
