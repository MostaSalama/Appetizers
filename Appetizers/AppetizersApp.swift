//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = OrderViewModel()
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
