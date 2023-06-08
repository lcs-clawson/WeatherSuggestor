//
//  ActivitiesView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-07.
//

import SwiftUI

struct Activity {
    let id: Int
    let name: String
    let highestTemp: Int
    let lowestTemp: Int
}

struct ActivitiesView: View {
    let activity: Activity
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(activity.name)
                    .font(.title3)
                    .bold()
                Text("ID: \(activity.id)")
                Text("Highest Temperature: \(activity.highestTemp)")
                Text("Lowest Temperature: \(activity.lowestTemp)")
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView(activity: Activity(id: 1, name: "Swimming", highestTemp: 35, lowestTemp: 20))
    }
}
