//
//  ContentView.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI

struct AppetizersTabView: View {

    @EnvironmentObject var order : OrderViewModel
    
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {Label("Home", systemImage: "house")}
            AccountView()
                .tabItem {Label("Account", systemImage: "person")}
            OrderView()
                .tabItem {Label("Order", systemImage: "bag")}
                .badge(order.items.count)
        }//:TAB VIEW
        
        
    }
        
}

#Preview {
    AppetizersTabView()
        .environmentObject(OrderViewModel())
}
