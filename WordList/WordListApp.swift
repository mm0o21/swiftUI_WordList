//
//  WordListApp.swift
//  WordList
//
//  Created by maoko furuya on 2025/06/17.
//

import SwiftUI
import SwiftData

@main
struct WordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
