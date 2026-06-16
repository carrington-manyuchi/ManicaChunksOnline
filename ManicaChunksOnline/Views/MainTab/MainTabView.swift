//
//  MainTab.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    HStack {
                        Button {
                            MainViewModel.shared.isUserLogin = false
                        } label: {
                            Text("Logout")
                        }
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    MainTabView()
}
