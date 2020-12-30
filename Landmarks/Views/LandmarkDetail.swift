//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Todd on 12/29/20.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData

    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    private enum Constant {
        enum Dimension {
            static let mapHeight: CGFloat = 300.0
            static let offset: CGFloat = -65.0
        }
    }
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: Constant.Dimension.mapHeight)

                CircleImage(image: landmark.image)
                    .aspectRatio(contentMode: .fit)
                    .offset(
                        x: .zero,
                        y: Constant.Dimension.offset)

                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)

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

                    Text("\(landmark.description)")
                }
                .offset(
                    x: .zero,
                    y: Constant.Dimension.offset)
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
