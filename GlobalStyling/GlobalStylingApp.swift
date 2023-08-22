//
//  GlobalStylingApp.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

@main
struct GlobalStylingApp: App {

    @StateObject var plantEnvironment: PlantEnvironment = .shared

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
            }
            .plantEnvironment(plantEnvironment)
            .navigationBarTitleDisplayMode(.inline)
            .background(plantEnvironment.styling.colors.background)
        }
    }
}
