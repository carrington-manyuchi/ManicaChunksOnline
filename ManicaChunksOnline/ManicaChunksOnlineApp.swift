//
//  ManicaChunksOnlineApp.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/08.
//

import SwiftUI

@main
struct ManicaChunksOnlineApp: App {
    @StateObject var mainViewModel = MainViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if mainViewModel.isUserLogin {
                    MainTabView()
                } else {
                    WelcomeView()
                }
            }
        }
    }
}
