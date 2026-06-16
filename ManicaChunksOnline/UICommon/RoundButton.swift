//
//  RoundButton.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//


import SwiftUI

struct RoundButton: View {
    
    @State var title: String = "title"
    @State var backgroundColor: Color = .primaryApp
    var didTap: (() -> ())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.gilroyCustomFont(.semibold, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton(title: "Get started Noe")
        .padding(20)
}
