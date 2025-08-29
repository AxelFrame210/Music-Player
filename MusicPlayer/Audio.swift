//
//  Audio.swift
//  MusicPlayer
//
//  Created by Admin on 19/8/25.
//

import SwiftUI

struct Audio: Hashable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var fileURL: URL
}
