//
//  APButton.swift
//  Appetizers
//
//  Created by Ninja on 12/03/2024.
//

import SwiftUI

struct APButton: View {
    
    let title : LocalizedStringKey
    
    var body: some View {
        Text(title)
            .foregroundStyle(.white)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.accent)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "title")
}
