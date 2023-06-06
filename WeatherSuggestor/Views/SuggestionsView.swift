//
//  SuggestionsView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-01.
//

import SwiftUI

struct SuggestionsView: View {
    var body: some View {
        
        VStack {
            
            Text("Ideas For Today:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(Color.yellow))
            
            Divider()
            
        
            
            
            Spacer()
            
        }
    }
}

struct SuggestionsView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionsView()
    }
}
