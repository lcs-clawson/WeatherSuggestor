//
//  ActivitiesView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-07.
//

import SwiftUI
import Blackbird

struct Suggestion: BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var highestTemp: Int
    @BlackbirdColumn var lowestTemp: Int
}


struct ActivitiesView: View {
    let suggestion: Suggestion
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(suggestion.name)
                    .font(.title3)
                    .bold()
                Text("ID: \(suggestion.id)")
                Text("Highest Temperature: \(suggestion.highestTemp)")
                Text("Lowest Temperature: \(suggestion.lowestTemp)") 
            }
            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
        .padding()
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView(suggestion: Suggestion(id: 1, name: "Swimming", highestTemp: 35, lowestTemp: 20))
//            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
