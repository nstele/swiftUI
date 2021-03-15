//
//  ContentView.swift
//  Landmarks
//
//  Created by Natalia  Stele on 27/01/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
     LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .environmentObject(ModelData())
    }
  }
}
