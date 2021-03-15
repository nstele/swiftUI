//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Natalia  Stele on 22/02/2021.
//

import SwiftUI

struct LandmarkRow: View {
  static let ROW_SIZE: CGFloat = 50
  var landmark: Landmark

  var body: some View {
    HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
      landmark.image
        .resizable().frame(width: LandmarkRow.ROW_SIZE, height: LandmarkRow.ROW_SIZE)
      Text(landmark.name)
      Spacer()

      if (landmark.isFavorite) {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
          .padding(20)
      }
    })
  }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var landmarks = ModelData().landmarks
  static var previews: some View {
    Group {
      LandmarkRow(landmark: landmarks[0])
      LandmarkRow(landmark: landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
  }
}
