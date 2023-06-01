//
//  WeatherSuggestorView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-05-31.
//

import SwiftUI

struct WeatherSuggestorView: View {
    var body: some View {
        
        VStack {
            Text("Weather Suggestor")
                .font(.largeTitle)
                .fontWeight(.bold)
            
                .padding(15)
            
            Text("Today's Forecast:")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("28°C")
                .font(.title)
                .fontWeight(.medium)
            
            
            Spacer()
        }
    }
}





struct WeatherSuggestorView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherSuggestorView()
    }
}
