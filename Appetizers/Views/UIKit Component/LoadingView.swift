//
//  LoadingView.swift
//  Appetizers
//
//  Created by Ninja on 06/03/2024.
//

import SwiftUI

struct ActivityIndicator : UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let acitivityIndicatorView = UIActivityIndicatorView(style: .large)
        acitivityIndicatorView.color = .brandPrimary
        acitivityIndicatorView.startAnimating()
        return acitivityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadingView : View{
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
