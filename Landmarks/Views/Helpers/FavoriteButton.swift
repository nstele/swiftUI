//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Natalia  Stele on 15/03/2021.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool
  var body: some View {
    Button(action: {
      isSet.toggle()
    }) {
      Image(systemName: isSet ? "star.fill" : "star")
        .foregroundColor(isSet ? .yellow : .gray)
    }
  }
}

struct FavoriteButton_Previews: PreviewProvider {
  static var previews: some View {
    FavoriteButton(isSet: .constant(true))
  }
}
