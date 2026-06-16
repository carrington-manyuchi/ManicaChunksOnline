//
//  RoundedButton.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

struct RoundedButton: View {
    @State var title: String = "Title"
    var didTap: (() -> ())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.gilroyCustomFont(.medium, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 55)
        .background(Color.primaryApp)
        .clipShape(RoundedRectangle(cornerRadius: 20))

    }
}

#Preview {
    RoundedButton()
        .padding(20)
}
