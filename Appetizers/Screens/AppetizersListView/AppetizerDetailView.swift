//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Ninja on 09/03/2024.
//

import SwiftUI
import CachedAsyncImage

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : OrderViewModel
    @StateObject var vm = AccountViewModel()
    let appetizer : Appetizer
    @Binding var isShowingDetail : Bool
    
    
    var body: some View {
        VStack{
            
            CachedAsyncImage(url: URL(string:appetizer.imageURL)) { image in
                
                image
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
                
                
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 300, height: 200)
            }

            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text(appetizer.description)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            
           
            
            HStack(spacing:40) {
            NutritionInfo(title: "Calories", value: "\(appetizer.calories) cl")
            NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
            NutritionInfo(title: "Protein", value: "\(appetizer.protein) g")
            }
            
            Spacer()
            
            Button {
                withAnimation(.smooth) {
                    order.add(appetizer)
                    isShowingDetail = false
                }
            } label: {
                //                APButton(title: "$\(appetizer.price , specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price , specifier: "%.2f") - Add to Order")
            }
            .standardButtonStyle()
            .padding(.bottom,30)
            
        }//: VSTACK
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay (
            Button(action: {
                withAnimation {
                    isShowingDetail = false
                }
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .imageScale(.medium)
                    .opacity(0.6)
            })
            .padding()
            , alignment: .topTrailing
        )
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
        .environmentObject(OrderViewModel())
}

struct NutritionInfo : View{
    let title : String
    let value : String
    var body: some View {
        VStack(spacing:5){
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
            
        }

    }
}
