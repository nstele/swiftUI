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

  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark

  var landmarkIndex: Int {
          modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
      }

  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300)
        .ignoresSafeArea(edges: .top)
      CircleImage(image: landmark.image)
        .offset(y: LandmarkDetail.IMAGE_OFFSET)
        .padding(.bottom, LandmarkDetail.IMAGE_PADDING)
      VStack(alignment: .leading) {

        HStack {
        Text(landmark.name)
          .font(.title)
          .foregroundColor(.primary)
          //Provides binding
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
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
  static let modelData = ModelData()
  static var previews: some View {

    LandmarkDetail(landmark: modelData.landmarks[1])
      .environmentObject(modelData)
  }
}
