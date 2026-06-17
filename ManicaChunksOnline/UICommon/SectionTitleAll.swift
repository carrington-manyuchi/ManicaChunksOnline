//
//  SectionTitleAll.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/17.
//

import SwiftUI

struct SectionTitleAll: View {
    @State var title: String = "Title"
    @State var titleAll: String = "View all"
    var didTap: (() -> ())?
    var body: some View {
        HStack {
            Text(title)
                .font(.gilroyCustomFont(.semibold, fontSize: 24))
                .foregroundStyle(Color.primaryText)
            Spacer()
            
            Text(titleAll)
                .font(.gilroyCustomFont(.semibold, fontSize: 16))
                .foregroundStyle(Color.primaryApp)
        }
        .frame(height: 40)

    }
}

#Preview {
    SectionTitleAll()
}
