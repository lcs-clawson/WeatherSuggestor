//
//  ActivitiesListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-06.
//

import SwiftUI


struct activities {
    var id: Int
    var name: String
    var highesttemp: Int
    var lowesttemp: Int
}

struct ActivitiesListView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                
                activities(id: 1, name: "Swim", highesttemp: 35, lowesttemp: 15)
                
                activities(id: 2, name: "Go for a walk", highesttemp: 25, lowesttemp: 10)
                
                activities(id: 3, name: "Shoot hoops", highesttemp: 22, lowesttemp: 12)
            }
            
            .navigationTitle("Activities")
            
            
            
        }
    }
}

struct ActivitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesListView()
    }
}
