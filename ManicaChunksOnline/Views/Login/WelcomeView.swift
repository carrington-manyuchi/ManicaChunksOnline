//
//  WelcomeView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geometery in
            
            ZStack {
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometery.size.width, height: geometery.size.height)
                
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
                        .padding(.bottom, geometery.size.width * 7/100)
                    
                    NavigationLink {
                        SignInView()
                    } label: {
                        RoundedButton(title: "Get Started")
                            .padding(.bottom, geometery.size.height * 8/100)
                    }
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
