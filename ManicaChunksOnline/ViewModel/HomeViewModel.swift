//
//  HomeViewModel.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/17.
//

import Foundation
import SwiftUI
import Combine

final class HomeViewModel: ObservableObject {
    static var shared: HomeViewModel = HomeViewModel()
    
    @State var selectedTab: Int = 0
    
}
