//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Natalia  Stele on 01/03/2021.
//

import SwiftUI

struct LandmarkList: View {
  static let TITLE = "Landmarks"
  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
    }
    .navigationTitle(LandmarkList.TITLE)
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone 8", "iPhone 12 mini"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
