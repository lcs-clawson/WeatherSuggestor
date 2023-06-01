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
            
            Text("The Weather Suggestor")
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(Color.yellow))
            
                .padding(15)
            
            Text("Today's Forecast:")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
                .padding(10)
            
            Text("28°C")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
          
                
                Text("Activities for today's weather:")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.purple))
            
            Spacer()
            
            Divider()
            
            HStack{
                
                Button(action: {}) {
                    Text("Weather")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.yellow)
                    
                }
                
                Button(action: {}) {
                    Text("Activities")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.purple)
                    
                }
                
            }
        }
    }
}





struct WeatherSuggestorView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherSuggestorView()
    }
}
