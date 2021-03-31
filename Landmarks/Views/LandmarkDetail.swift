//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Travis Musall on 3/19/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
  
  
  
    var body: some View {
      ScrollView {
        MapView(coordinate: landmark.locationCoordinate)
          .ignoresSafeArea(edges: .top)
          .frame(height: 300)
        
        CircleImage(image: landmark.image)
          .offset(y: -130)
          .padding(.bottom, -130)

        CircleImage(image: Image("popsocket"))
          .position(x: 300, y: -40)
          .border(Color.black, width: 3)
          .frame(maxHeight: 0.1)
        
        VStack(alignment: .leading) {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)
          
          HStack {
            Text(landmark.park)
            Spacer()
            Text(landmark.state)
          }
          .font(.subheadline)
          .foregroundColor(.secondary)
          
          Divider()
          
          Text("VapeInfo")
            .font(.title)
          Spacer()
          Text(landmark.description)
        }
        .padding()
        
        Spacer()
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
