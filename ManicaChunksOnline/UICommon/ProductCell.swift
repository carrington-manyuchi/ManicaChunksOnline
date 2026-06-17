//
//  ProductCell.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/17.
//

import SwiftUI

struct ProductCell: View {
    var didAddCart: (() -> ())?

    var body: some View {
        VStack {
            Image("banana")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
            
            Spacer()
            
            Text("Banana")
                .font(.gilroyCustomFont(.bold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("7pcs, price")
                .font(.gilroyCustomFont(.medium, fontSize: 14))
                .foregroundStyle(Color.secondaryText)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack {
                Text("$2.99")
                    .font(.gilroyCustomFont(.semibold, fontSize: 18))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Button {
                    didAddCart?()
                } label: {
                    Image("add")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
                .frame(width: 40, height: 40)
                .background(Color.primaryApp)
                .cornerRadius(15)
            }
            
            Spacer()

        }
        .padding(15)
        .frame(width: 180, height: 230)
        .overlay {
            RoundedRectangle(cornerRadius: 16)
            .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)        }
    }
}

#Preview {
    ProductCell()
}
