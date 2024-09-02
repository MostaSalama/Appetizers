//
//  LoadingView.swift
//  Appetizers
//
//  Created by Ninja on 06/03/2024.
//

import SwiftUI

struct LoadingView : View{
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint:.accent))
                .scaleEffect(2)
        }
    }
}
