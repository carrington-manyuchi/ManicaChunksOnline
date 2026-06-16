//
//  LineTextField.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import Foundation
import SwiftUI

struct LineTextField: View {
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack {
            Text(title)
                .font(.gilroyCustomFont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTitle)
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            TextField(placeholder, text: $txt)
                .keyboardType(keyboardType)
                .frame(height: 40)
            
            Divider()
        }
    }
}


#Preview {
    LineTextField(txt: .constant(""))
        .padding(20)
}


struct LineSecureField: View {
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    
    var body: some View {
        VStack {
            Text(title)
                .font(.gilroyCustomFont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if isShowPassword {
                TextField(placeholder, text: $txt)
                    .disableAutocorrection(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
                
            } else {
                SecureField(placeholder, text: $txt)
                    .disableAutocorrection(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
            }
            
            Divider()
        }
    }
}
