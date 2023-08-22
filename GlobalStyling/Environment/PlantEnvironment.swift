//
//  PlantEnvironment.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import Combine
import SwiftUI

final class PlantEnvironment: ObservableObject {
    static var shared = PlantEnvironment()

    @Published var styling: Styling

    private var stylingCancellable: AnyCancellable?

    init(styling: Styling = .marigold) {
        self.styling = styling
        updateAppearances(with: styling)

        stylingCancellable = $styling.sink {
            self.updateAppearances(with: $0)
        }
    }

    private func updateAppearances(with styling: Styling) {
        let backgroundColor = styling.colors.background.uiKitColor
        let titleColor = styling.colors.text.uiKitColor
        let tintColor = styling.colors.tintColor.uiKitColor
        let titleFont = UIFont.boldSystemFont(ofSize: 25)
        let largeTitleFont = UIFont.systemFont(ofSize: 34)

        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = backgroundColor

        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor, .font: titleFont]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor, .font: largeTitleFont]

        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor

        for window in UIApplication.shared.windows {
            for view in window.subviews {
                view.removeFromSuperview()
                window.addSubview(view)
            }
        }
    }
}

extension View {
    func plantEnvironment(_ plantEnvironment: PlantEnvironment = .shared) -> some View {
        self
            .environment(\.styling, plantEnvironment.styling)
            .environmentObject(plantEnvironment)
    }
}

