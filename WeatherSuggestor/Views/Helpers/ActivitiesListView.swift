
//
//  ActivitiesListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-06.
//

import SwiftUI
import Blackbird


struct ActivityRow: View {
    var suggestions: Suggestion
    
    var body: some View {
        Text(suggestions.name)
    }
}

struct ActivitiesListView: View {
    
    // MARK: Stored Properties
    
    @BlackbirdLiveModels({ Suggestion2db in
        try await Suggestion.read(from: Suggestion2db)
    }) var suggestions
    
    // MARK: Computed Properties
    var body: some View {
        NavigationView {
            
            List(suggestions.results) { currentSuggestion in
                ActivityRow(suggestions: Suggestion(id: currentSuggestion.id,
                                                    name: currentSuggestion.name,
                                                    highestTemp: currentSuggestion.highestTemp,
                                                    lowestTemp: currentSuggestion.lowestTemp))
            }
            .navigationTitle("Activities")
        }
    }
}

struct ActivitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesListView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
// Suggestions: Suggestion(id: 1, name: "Swim", highestTemp: 35, lowestTemp: 20

