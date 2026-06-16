//
//  WelcomeView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader {  in
            
            ZStack {
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                
                VStack {
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.bottom)
                    
                    Text("Welcome\nto our store")
                        .font(.gilroyCustomFont(.semibold, fontSize: 48))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Get your groceries in as fast as one hour")
                        .font(.gilroyCustomFont(.medium, fontSize: 16))
                        .foregroundStyle(.white.opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25)
                    
                    RoundedButton(title: "Get Started") { }
                    
                    Spacer()
                        .frame(height: 80)
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
