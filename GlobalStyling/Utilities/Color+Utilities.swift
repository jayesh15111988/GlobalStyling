//
//  Color+Utilities.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

extension Color {
    init(hex: UInt) {
        self.init(
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: 1.0
        )
    }

    var uiKitColor: UIColor {
        UIColor(self)
    }
}

