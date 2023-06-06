//
//  ListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-05.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        List {
            Text("What would you like to learn?")
                .font(.title2)
                .fontWeight(.bold)
            Label("Learn Geography", systemImage: "signpost.right.fill")
            Label("Learn Music", systemImage: "doc.richtext")
            Label("Learn Photography", systemImage: "camera.aperture")
            Label("Learn Art", systemImage: "paintpalette.fill")
                .font(Font.system(.title3).weight(.bold))
            Label("Learn Physics", systemImage: "atom")
            Label("Learn 3D", systemImage: "cube.transparent")
            Label("Learn Hair Styling", systemImage: "comb.fill")
        }
        .accentColor(.green)
        .listStyle(.automatic)
        .font(.title)
    }
    
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
