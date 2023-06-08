//
//  ActivitiesListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-06.
//

import SwiftUI
import Blackbird


struct ActivitiesListView: View {
    
    // MARK Stored Properties
    
    @BlackbirdLiveModels ({ Suggestordb in
        try await Suggestion.read(from: Suggestordb)
    }) var Suggestions
    
    // MARK Computed Properties
    var body: some View {
        NavigationView {
            
            List(Suggestions.results) {currentSuggestion in
                SuggestionsView(name: currentSuggestion.name,
                                highestTemp: currentSuggestion.highestTemp,
                                lowestTemp: currentSuggestion.lowestTemp)

                
                
                //                ActivityRow(activity: Activity(id: 1, name: "Swim", highestTemp: 35, lowestTemp: 15))
                //                ActivityRow(activity: Activity(id: 2, name: "Go for a walk", highestTemp: 25, lowestTemp: 10))
                //                ActivityRow(activity: Activity(id: 3, name: "Shoot hoops", highestTemp: 22, lowestTemp: 12))
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
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
// Suggestions: Suggestion(id: 1, name: "Swim", highestTemp: 35, lowestTemp: 20
