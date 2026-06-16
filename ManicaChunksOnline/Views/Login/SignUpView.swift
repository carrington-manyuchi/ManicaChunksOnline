//
//  SignUpView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI

struct SignUpView: View {
    @StateObject private var viewModel: MainViewModel = MainViewModel.shared
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                Image("bottom_up")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack {
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .padding(.bottom, geometry.size.width * 2/100)
                    
                    Text("Sign Up")
                        .font(.gilroyCustomFont(.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .padding(.bottom, 5)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("Enter your credentials to continue")
                        .font(.gilroyCustomFont(.semibold, fontSize: 16))
                        .foregroundStyle(Color.secondaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, geometry.size.width * 10/100)
                    
                    LineTextField(
                        title: "Username",
                        placeholder: "Enter your username",
                        txt: $viewModel.usernameText,
                        keyboardType: .default
                    )
                    .padding(.bottom, geometry.size.width * 7/100)
                    
                    LineTextField(
                        title: "Email",
                        placeholder: "Enter your email address",
                        txt: $viewModel.emailText,
                        keyboardType: .emailAddress
                    )
                    .padding(.bottom, geometry.size.width * 7/100)
                    
                    LineSecureField(
                        title: "Password",
                        placeholder:  "Enter your password",
                        txt: $viewModel.passwordText,
                        isShowPassword: $viewModel.isShowPassword
                    )
                    .padding(.bottom,  geometry.size.width * 7/100)
                    
                    VStack {
                        Text("By contnuing, you agree to our :")
                            .font(.gilroyCustomFont(.medium, fontSize: 14))
                            .foregroundStyle(Color.secondaryText)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            Text("Terms of Service")
                                .font(.gilroyCustomFont(.medium, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                            
                            Text("and")
                                .font(.gilroyCustomFont(.medium, fontSize: 14))
                                .foregroundStyle(Color.secondaryText)
                            
                            Text("Privacy Policy")
                                .font(.gilroyCustomFont(.medium, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.bottom, geometry.size.width * 2/100)
                    }
                    
                    RoundButton(title: "Sign Up") {
                        viewModel.serviceCallSignUp()
                    }
                    .padding(.bottom, geometry.size.width * 5/100)
                    
                    NavigationLink {
                        LoginView()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                                .font(.gilroyCustomFont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryText)
                        
                            Text("Sign In")
                                .font(.gilroyCustomFont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                        }
                    }
                }
            }
        }
        .alert(isPresented: $viewModel.showError) {
            Alert(
                title: Text(Globs.AppName),
                message: Text(viewModel.errorMessage),
                dismissButton: .default(Text("Ok"))
            )
        }
        .navigationTitle("")
        .toolbarVisibility(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.horizontal)
    }
}

#Preview {
    SignUpView()
}
