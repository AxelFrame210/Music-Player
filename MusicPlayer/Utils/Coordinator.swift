//
//  Coordinator.swift
//  MusicPlayer
//
//  Created by Admin on 29/8/25.
//


import Foundation
import SwiftUI

final class Coordinator: ObservableObject {
    @Published var path: [AppPages] = [] {
        didSet { savePathToUserDefaults() }
    }
    
    private let pathKey = "savedPathKey"

    init() {
        restorePathFromUserDefaults()
    }

    func push(page: AppPages) {
        path.append(page)
    }

    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func popToRoot() {
        path.removeAll()
    }

    func savePathToUserDefaults() {
        if let data = try? JSONEncoder().encode(path) {
            UserDefaults.standard.set(data, forKey: pathKey)
        }
    }

    func restorePathFromUserDefaults() {
        guard
            let data = UserDefaults.standard.data(forKey: pathKey),
            let decoded = try? JSONDecoder().decode([AppPages].self, from: data)
        else {
            return
        }
        path = decoded
    }

    func clearSavedPath() {
        UserDefaults.standard.removeObject(forKey: pathKey)
        path.removeAll()
    }

    @ViewBuilder
    func build(page: AppPages) -> some View {
        switch page {
        case .home:
            HomeView()
        }
    }
}
