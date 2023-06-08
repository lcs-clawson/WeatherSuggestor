//
//  WeatherSuggestorView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-05-31.
//

import SwiftUI

struct WeatherSuggestorView: View {
    
    @State private var temp: String = "20°"
    
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
            
            HStack {
                
                Spacer(minLength: 165)
                
                TextField("Enter the temperature", text: $temp)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
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
                        .foregroundColor(Color.white)
                }
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(Color.blue))
                
                Image(systemName: "sun.max.fill")
                
                Button(action: {}) {
                    Text("Activities")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                }
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(Color.blue))
                
                Image(systemName: "figure.walk.circle.fill")
                
            }
        }
    }
}





struct WeatherSuggestorView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherSuggestorView()
    }
}
