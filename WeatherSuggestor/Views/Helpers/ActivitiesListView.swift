//
//  ActivitiesListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-06.
//

import SwiftUI

struct Activity {
    var id: Int
    var name: String
    var highestTemp: Int
    var lowestTemp: Int
}

struct ActivitiesListView: View {
    var body: some View {
        NavigationView {
            List {
                ActivityRow(activity: Activity(id: 1, name: "Swim", highestTemp: 35, lowestTemp: 15))
                ActivityRow(activity: Activity(id: 2, name: "Go for a walk", highestTemp: 25, lowestTemp: 10))
                ActivityRow(activity: Activity(id: 3, name: "Shoot hoops", highestTemp: 22, lowestTemp: 12))
            }
            .navigationTitle("Activities")
        }
    }
}

struct ActivityRow: View {
    var activity: Activity
    
    var body: some View {
        Text(activity.name)
    }
}

struct ActivitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesListView()
    }
}