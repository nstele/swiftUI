//
//  CircleImage.swift
//  Landmarks
//
//  Created by Natalia  Stele on 02/02/2021.
//

import SwiftUI

struct CircleImage: View {
  static let LINE_WIDTH: CGFloat = 4
  static let RADIUS: CGFloat = 7
  var image: Image

  var body: some View {
    image
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .overlay(Circle().stroke(Color.white, lineWidth: CircleImage.LINE_WIDTH))
      .shadow(radius: CircleImage.RADIUS)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage( image: Image("turtlerock"))
  }
}
