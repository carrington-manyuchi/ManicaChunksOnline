//
//  MainViewModel.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import Foundation
import SwiftUI
import Combine

final class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    @Published var usernameText: String = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isShowPassword: Bool = false
    @Published var showError: Bool = false
    @Published var  errorMessage: String = ""
    @Published var isUserLogin: Bool = false
    // @Publishedvar userObj: UserModel = UserMode
    
    init() {
#if DEBUG
        emailText = "test@gmail.com"
        passwordText = "123456"
        
#endif
    }
    
    func serviceCallLogin() {
        if emailText.isEmpty {
            self.errorMessage = "Email address could not be empty"
            self.showError = true
            return
        }
        
        if(!emailText.isValidEmail) {
            self.errorMessage = "please enter valid email address"
            self.showError = true
            return
        }
        
        if passwordText.isEmpty {
            self.errorMessage = "Password could not be empty"
            self.showError = true
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isUserLogin = true
            UserDefaults.standard.set(true, forKey: "isUserLogin")
        }
    }
    
    func serviceCallSignUp(){
        if(usernameText.isEmpty) {
            self.errorMessage = "please enter valid username"
            self.showError = true
            return
        }
        
        guard usernameText.count >= 3 else {
            self.errorMessage = "Username must be at least 3 characters"
            self.showError = true
            return
        }
        
        if(!emailText.isValidEmail) {
            self.errorMessage = "please enter valid email address"
            self.showError = true
            return
        }
        
        if(passwordText.isEmpty) {
            self.errorMessage = "Password cannot be empty"
            self.showError = true
            return
        }
        
        guard passwordText.count >= 4 else {
            self.errorMessage = "Password must be at least 5 characters"
            self.showError = true
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isUserLogin = true
            UserDefaults.standard.set(true, forKey: "isUserLogin")
        }
    }
    
    func logout() {
        isUserLogin = false
        UserDefaults.standard.removeObject(forKey: "isUserLogin")

        usernameText = ""
        emailText = ""
        passwordText = ""
    }
    
}
