//
//  HomeView.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var homeViewModel: HomeViewModel = HomeViewModel.shared
    
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
                    
                    SearchTextField(placeholder: "Search Store", txt: $homeViewModel.textSearch)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                }
                .padding(.top)
                
                Image("banner_top")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 115)
                    .padding(.horizontal, 20)
                
                SectionTitleAll(title: "Exclusive Offer", titleAll: "See All") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0...5, id: \.self) { index in
                            ProductCell {  }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .scrollIndicators(.hidden)
                
                SectionTitleAll(title: "Best Selling", titleAll: "See All") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0...5, id: \.self) { index in
                            ProductCell {  }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .scrollIndicators(.hidden)
                
                SectionTitleAll(title: "Groceries", titleAll: "See All") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0...5, id: \.self) { index in
                            CategoryCell(color: Color(hex: "F8A44C")) {
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .padding(.bottom, 8)
                .scrollIndicators(.hidden)
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0...5, id: \.self) { index in
                            ProductCell {  }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                }
                .scrollIndicators(.hidden)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
