//
//  SearchTextField.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/17.
//

import SwiftUI

struct SearchTextField: View {
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    
    var body: some View {
        HStack {
            TextField(placeholder, text: $txt)
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled(true)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}

#Preview {
    SearchTextField(txt: .constant(""))
        .padding(20)
}
