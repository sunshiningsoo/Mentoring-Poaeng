//
//  PoaengApp.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/05.
//

import SwiftUI

@main
struct PoaengApp: App {
    @ObservedObject var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
 
