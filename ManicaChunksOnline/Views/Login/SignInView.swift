//
//  SigninView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    @State private var txtMobile = ""
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                VStack {
                    Image("sign_in_top")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height / 6)
                }
                    ScrollView {
                        VStack(alignment: .leading) {
                        Text("Get your groceries\nwith nectar")
                            .font(.gilroyCustomFont(.semibold, fontSize: 26))
                            .foregroundStyle(Color.primaryText)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 25)
                        
                        HStack {
                            Image("")
                            Button {
                               isShowPicker = true
                            } label: {
                                if let country = countryObj {
                                    Text(country.isoCode.getFlag())
                                        .font(.gilroyCustomFont(.medium, fontSize: 35))
                                        .foregroundStyle(Color.primaryText)
                                    
                                    Text("+ \(country.phoneCode)")
                                        .font(.gilroyCustomFont(.medium, fontSize: 18))
                                        .foregroundStyle(Color.primaryText)
                                }
                            }
                            
                            TextField("Enter Mobile", text: $txtMobile)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        
                        Divider()
                            .padding(.bottom, 30)
                        
                        Text("Or connect with social media")
                            .font(.gilroyCustomFont(.semibold, fontSize: 14))
                            .foregroundStyle(Color.textTitle)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.bottom, 25)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, geometry.safeAreaInsets.top + geometry.size.height * 40 / 100)
                        
                        RoundedButton(title: "Continue with Google") {
                            
                        }
                        .padding(.trailing, 40)
                        
                        RoundedButton(title: "Continue with Facebook") {
                            
                        }
                        .padding(.trailing, 40)
                }
            }
            .onAppear(perform: {
                self.countryObj = Country(phoneCode: "27", isoCode: "ZAR" )
            })
            .sheet(isPresented: $isShowPicker, content: {
                CountryPickerUI(country: $countryObj)
            })
            .navigationTitle("")
            .toolbarVisibility(.hidden, for: .tabBar)
            .padding(.horizontal)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}
