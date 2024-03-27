//
//  ContentView.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        .foregroundStyle(.brandPrimary)
                        
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }//:TAB VIEW
        .tint(.brandPrimary)
        
    }
}

#Preview {
    AppetizersTabView()
}
