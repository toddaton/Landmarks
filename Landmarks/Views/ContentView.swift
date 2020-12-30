//
//  ContentView.swift
//  Landmarks
//
//  Created by Todd on 10/15/20.
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
                .preferredColorScheme(.light)
            ContentView()
                .environmentObject(ModelData())
                .preferredColorScheme(.dark)
        }
    }
}
