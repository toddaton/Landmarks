//
//  CircleImage.swift
//  Landmarks
//
//  Created by Todd on 12/29/20.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .frame(width: 130, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
            .preferredColorScheme(.light)
        CircleImage(image: Image("hiddenlake"))
            .preferredColorScheme(.dark)
    }
}
