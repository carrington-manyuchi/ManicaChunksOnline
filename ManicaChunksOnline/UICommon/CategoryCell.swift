//
//  CategoryCell.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/17.
//

import SwiftUI

struct CategoryCell: View {
    @State var color: Color = Color.yellow
    var didAddCart: (() -> ())?
    
    var body: some View {
        HStack {
            Image("pulses")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            Text("Pulses")
                .font(.gilroyCustomFont(.bold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()

        }
        .padding(15)
        .frame(width: 250, height: 100)
        .background(color.opacity(0.3))
        .cornerRadius(16)
    }
}

#Preview {
    CategoryCell()
}
