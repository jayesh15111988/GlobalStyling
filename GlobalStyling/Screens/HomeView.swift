//
//  HomeView.swift
//  GlobalStyling
//
//  Created by Jayesh Kawli on 8/18/23.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var plantEnvironment: PlantEnvironment

    var body: some View {
        VStack {
            plantEnvironment.styling.icons.homePageIcon

            NavigationLink {
                StyleView()
            } label: {
                Text("Customize Styles")
                    .foregroundStyle(plantEnvironment.styling.colors.text)
                    .padding()
            }
        }
        .navigationTitle(plantEnvironment.styling.title)
    }
}

#Preview {
    HomeView()
}
