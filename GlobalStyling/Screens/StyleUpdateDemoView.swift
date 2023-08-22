//
//  StyleUpdateDemoView.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

struct StyleUpdateDemoView: View {

    @EnvironmentObject var plantEnvironment: PlantEnvironment

    var body: some View {
        VStack {
            Text("Title")
                .foregroundStyle(plantEnvironment.styling.colors.text)
            Text("Subtitle")
                .foregroundStyle(plantEnvironment.styling.colors.subText)
        }
        .background(plantEnvironment.styling.colors.background)
        .navigationTitle(plantEnvironment.styling.title)
    }
}

#Preview {
    StyleUpdateDemoView()
}

