//
//  OrderView.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : OrderViewModel
    var vm = AccountViewModel()
    @AppStorage("user") private var userData : Data?
    
    
    var body: some View {
        NavigationView {
          
            ZStack {
                VStack {
                    List {
                        ForEach(order.items){ item in
                            AppetizerListCell(appetizer: item)
                        }
                        .onDelete(perform: { indexSet in
                            order.delete(at: indexSet)
                            
                            
                        })
                        
                    }
                    
                    .listStyle(PlainListStyle())
                    
                    Button(action: {
                        
                    }, label: {

                        Text("$\(order.totalPrice , specifier: "%.2f") - Place Order")
                    })
                    .standardButtonStyle()
                    .padding(.bottom,25)
                
                   
                }
                if order.items.count == 0 {
                    withAnimation {
                        EmptyState(imageName: "empty", message: "You have no items in your orders. \nPlease add an appetizer!")
                    }
                    
                }
         
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(OrderViewModel())
}
