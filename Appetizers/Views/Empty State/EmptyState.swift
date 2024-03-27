//
//  EmptyState.swift
//  Appetizers
//
//  Created by Ninja on 22/03/2024.
//

import SwiftUI

struct EmptyState: View {
    let imageName : String
    let message : String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .fontWeight(.semibold)
                    .font(.title3)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset( y: -50)
        
        }
    }
}

#Preview {
    EmptyState(imageName: "empty", message: "Testing message")
}
