//
//  CoordinatorView.swift
//  MusicPlayer
//
//  Created by Admin on 29/8/25.
//

import SwiftUI
import Foundation

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .home)
                .navigationDestination(for: AppPages.self) { page in
                    coordinator.build(page: page)
                }
        }
        .onChange(of: coordinator.path) {
            coordinator.savePathToUserDefaults()
        }
        .environmentObject(coordinator)
    }
}

