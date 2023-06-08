//
//  WeatherSuggestorApp.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-05-31.
//

import SwiftUI
import Blackbird

@main
struct WeatherSuggestorApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherSuggestorView()
                .environment(\.blackbirdDatabase, AppDatabase.instance)
            // Could use this for the syntax error in the writing ^
        }
    }
}
