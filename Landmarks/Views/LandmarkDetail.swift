//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Natalia  Stele on 01/03/2021.
//

import SwiftUI

struct LandmarkDetail: View {
  static let IMAGE_OFFSET: CGFloat = -130
  static let IMAGE_PADDING: CGFloat = -130
  var landmark: Landmark

  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300)
        .ignoresSafeArea(edges: .top)
      CircleImage(image: landmark.image)
        .offset(y: LandmarkDetail.IMAGE_OFFSET)
        .padding(.bottom, LandmarkDetail.IMAGE_PADDING)
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)


        Divider()
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarks[0])
  }
}
