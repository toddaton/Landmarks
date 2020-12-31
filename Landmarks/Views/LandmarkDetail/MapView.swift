//
//  MapView.swift
//  Landmarks
//
//  Created by Todd on 12/29/20.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region = MKCoordinateRegion()

    var coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
                    latitude: 34.011_286,
                    longitude: -116.166_868))
            .preferredColorScheme(.light)
        MapView(coordinate: CLLocationCoordinate2D(
                    latitude: 34.011_286,
                    longitude: -116.166_868))
            .preferredColorScheme(.dark)
    }
}
