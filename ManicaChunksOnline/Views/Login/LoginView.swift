//
//  SignInView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel =  MainViewModel()
    @Environment(\.dismiss) var dismiss
    
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
                        .padding(.bottom, geometry.size.height * 3/100)
                    
                    Text("Login")
                        .font(.gilroyCustomFont(.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("Enter your email and password")
                        .font(.gilroyCustomFont(.semibold, fontSize: 16))
                        .foregroundStyle(Color.secondaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, geometry.size.height * 3/100)
                    
                    LineTextField(
                        title: "Email",
                        placeholder: "Enter your email address",
                        txt: $viewModel.emailText,
                        keyboardType: .emailAddress
                    )
                    .padding(.bottom, geometry.size.height * 3/100)
                    
                    LineSecureField(
                        title: "Password",
                        placeholder: "Enter your password",
                        txt: $viewModel.passwordText,
                        isShowPassword: $viewModel.isShowPassword
                    )
                    .padding(.bottom, geometry.size.height * 1/100)

                    Button {
                        
                    } label: {
                        Text("Forgot Password")
                            .font(.gilroyCustomFont(.medium, fontSize: 14))
                            .foregroundStyle(Color.primaryText)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    .padding(.bottom, geometry.size.height * 3/100)

                    RoundButton(title: "Log In") {
                        viewModel.serviceCallLogin()
                    }
                    .padding(.bottom, geometry.size.height * 1.5/100)

                    NavigationLink {
                        
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.gilroyCustomFont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryText)
                            
                            Text("Signup")
                                .font(.gilroyCustomFont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                        }
                    }
                    Spacer()
                }
                .padding(.top, geometry.size.height * 18/100)
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image("back")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, geometry.size.height * 8/100)
            }
        }
        .alert(isPresented: $viewModel.showError) {
            Alert(
                title: Text(Globs.AppName),
                message: Text(viewModel.errorMessage),
                dismissButton: .default(Text("Ok"))
            )
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
        .toolbarVisibility(.hidden, for: .navigationBar)
    }
}

#Preview {
    LoginView()
}
