//
//  StyleView.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

struct StyleView: View {

    @EnvironmentObject var plantEnvironment: PlantEnvironment

    var body: some View {
        VStack {
            Text("Customize Styles")

            plantEnvironment.styling.icons.stylePageIcon

            Picker("Picker", selection: $plantEnvironment.styling) {
                Text("Marigold")
                    .tag(Styling.marigold)

                Text("Sunflower")
                    .tag(Styling.sunflower)

                Text("Brinjal")
                    .tag(Styling.brinjal)
            }
            .pickerStyle(SegmentedPickerStyle())

            NavigationLink {
                StyleUpdateDemoView()
            } label: {
                Text("Tap to view updated styles")
                    .foregroundStyle(plantEnvironment.styling.colors.text)
            }

        }
        .padding()
        .navigationTitle(plantEnvironment.styling.title)
    }
}

#Preview {
    StyleView()
}

