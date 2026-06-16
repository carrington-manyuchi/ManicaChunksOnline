//
//  SignInView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                
                VStack {
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .padding(.bottom, 30)
                    
                    Text("Login")
                        .font(.gilroyCustomFont(.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("Enter your email and password")
                        .font(.gilroyCustomFont(.semibold, fontSize: 16))
                        .foregroundStyle(Color.secondaryText)
                    
                    
                    
                    
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
