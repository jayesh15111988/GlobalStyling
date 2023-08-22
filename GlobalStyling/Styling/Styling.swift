//
//  Styles.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import Combine
import SwiftUI

struct Styling: Identifiable, Hashable {
    let id = UUID()

    var spacing: Spacings
    var colors: Colors
    var icons: Icons
    var fonts: Fonts
    var title: String

    init(spacing: Spacings = Spacings(), colors: Colors = Colors(), icons: Icons = Icons(), fonts: Fonts = Fonts()) {
        self.spacing = spacing
        self.colors = colors
        self.icons = icons
        self.fonts = fonts
        self.title = "Marigold"
    }
}

extension Styling {
    static var `default` = Styling()

    static var marigold = Styling()

    static var sunflower: Styling = {
        var styling = Styling()
        styling.colors = Colors()
        styling.colors.background = .green
        styling.colors.subText = styling.colors.yellow
        styling.colors.text = .red
        styling.icons.homePageIconName = "paperplane.fill"
        styling.icons.stylePageIconName = "tray.2"
        styling.title = "Sunflower"
        return styling
    }()

    static var brinjal: Styling = {
        var styling = Styling()
        styling.colors = Colors()
        styling.colors.text = .purple
        styling.colors.subText = styling.colors.purple
        styling.colors.background = styling.colors.yellow
        styling.icons.homePageIconName = "bookmark.fill"
        styling.icons.stylePageIconName = "person.circle"
        styling.title = "Brinjal"
        return styling
    }()
}

struct StylingEnvironmentKey: EnvironmentKey {
    static var defaultValue: Styling = Styling()
}

extension EnvironmentValues {
    var styling: Styling {
        get { self[StylingEnvironmentKey.self] }
        set { self[StylingEnvironmentKey.self] = newValue }
    }
}

extension View {
    func setStyling(_ value: Styling) -> some View {
        environment(\.styling, value)
    }
}
