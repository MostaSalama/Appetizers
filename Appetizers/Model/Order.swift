//
//  Order.swift
//  Appetizers
//
//  Created by Ninja on 22/03/2024.
//

import Foundation

final class OrderViewModel :ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice : Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func delete(at offsets:IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
