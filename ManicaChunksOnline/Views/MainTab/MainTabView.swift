//
//  MainTab.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI
import SwiftUI

struct MainTabView: View {
    @StateObject private var homeViewModel = HomeViewModel.shared
    @StateObject private var viewModel = MainViewModel.shared
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            Text("Cart")
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                Label("Profile", systemImage: "person.fill")
            }
            .tag(4)
        }
        .onAppear {
            UIScrollView.appearance().isScrollEnabled = false
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    MainTabView()
}
