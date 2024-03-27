//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Ninja on 27/03/2024.
//

import Foundation
import SwiftUI

struct StandardButtonStyle : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accent)
            .controlSize(.large)
    }
    
}

extension View {
    func standardButtonStyle() -> some View{
        self.modifier(StandardButtonStyle())
    }
}
