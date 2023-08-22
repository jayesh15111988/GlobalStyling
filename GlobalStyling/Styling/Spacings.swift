//
//  Spacings.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import Combine
import Foundation
import SwiftUI

struct Spacings: Hashable {

    static let _8: CGFloat = 8
    static let _12: CGFloat = 12
    static let _16: CGFloat = 16
    static let _20: CGFloat = 20

    init() {

    }

    var large: CGFloat {
        return Spacings._16
    }

    var medium: CGFloat {
        return Spacings._12
    }

    var small: CGFloat {
        return Spacings._8
    }

    var margin: CGFloat {
        return Spacings._20
    }
}
