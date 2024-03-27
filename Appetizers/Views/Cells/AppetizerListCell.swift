//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Ninja on 27/02/2024.
//

import SwiftUI


struct AppetizerListCell: View {
    
    let appetizer : Appetizer
    var body: some View {
        HStack {
            
            AsyncImage(url: URL(string:appetizer.imageURL)) { image in
                      image
                          .resizable()
                          .scaledToFit()
                          .cornerRadius(8)
                          
                  } placeholder: {
                      Image("food-placeholder")
                          .resizable()
                  }
                  .frame(width: 120, height: 90)
           
                
                
            VStack(alignment:.leading , spacing: 5) {
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price,specifier: "%.2f")")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                
            }//:VSTACK
            .padding(.leading)
        }//:HSTACK
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
