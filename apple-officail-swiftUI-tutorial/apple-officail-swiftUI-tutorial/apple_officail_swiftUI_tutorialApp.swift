//
//  apple_officail_swiftUI_tutorialApp.swift
//  apple-officail-swiftUI-tutorial
//
//  Created by koki isshiki on 13.02.23.
//

import SwiftUI

@main
struct apple_officail_swiftUI_tutorialApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
