//
//  HomeView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                        Image("color_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .padding(.bottom)
                    
                    
                    HStack {
                            Image("location")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        
                        Text("Mutare, Zimbabwe")
                            .font(.gilroyCustomFont(.semibold, fontSize: 18))
                            .foregroundStyle(Color.darkGray)
                    }
                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    HomeView()
}
