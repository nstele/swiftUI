//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Natalia  Stele on 22/02/2021.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark
  var body: some View {
    HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
      landmark.image
        .resizable().frame(width: 50, height: 50)
      Text(landmark.name)
      Spacer()
    })
  }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var previews: some View {

    Group {
      LandmarkRow(landmark: landmarks[0])
      LandmarkRow(landmark: landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
  }
}
