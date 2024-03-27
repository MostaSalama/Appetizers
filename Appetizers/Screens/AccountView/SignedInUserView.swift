//
//  SignedInUserView.swift
//  Appetizers
//
//  Created by Ninja on 18/03/2024.
//

import SwiftUI

struct SignedInUserView: View {
    @State  var name : String
    @StateObject var viewModel = AccountViewModel()
    @AppStorage("isSignedIn")  var isSignedIn = false
    @AppStorage("user") private var userData : Data?
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(alignment:.center) {
                Spacer()
                Image("user")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                    
                Text(name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.secondary)
                
                Spacer()
                Button(action: {
                    isSignedIn = false
                    userData = nil
                }, label: {
                    APButton(title: "Sign Out")
                })
                .padding(.bottom,20)
                
                
            }
            
        }
        
        
    }
}

#Preview {
    
     SignedInUserView(name: "name")
}
