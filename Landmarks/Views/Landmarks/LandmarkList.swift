//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Natalia  Stele on 01/03/2021.
//

import SwiftUI

struct LandmarkList: View {
  static let TITLE = "Landmarks"

  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false

  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { landmandk in
      (landmandk.isFavorite || !showFavoritesOnly)
    }
  }

  var body: some View {
    NavigationView {
      List {

        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites only")
        }

        ForEach(filteredLandmarks) { landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
        .navigationBarTitle(LandmarkList.TITLE)
      }
    }

  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
      .environmentObject(ModelData())
  }
}

