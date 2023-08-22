//
//  Icons.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

struct Icons: Hashable, Identifiable {

    var homePageIconName = "checkmark.circle.fill"
    var stylePageIconName = "smallcircle.fill.circle.fill"

    func hash(into hasher: inout Hasher) {
        hasher.combine(homePageIconName)
        hasher.combine(stylePageIconName)
    }

    var id: String {
        homePageIconName + stylePageIconName
    }

    var homePageIcon: Image {
        Image(systemName: homePageIconName)
    }
    var stylePageIcon: Image {
        Image(systemName: stylePageIconName)
    }

    init() {

    }
}
