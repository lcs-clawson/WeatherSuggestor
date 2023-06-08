//
//  ActivitiesView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-07.
//

import SwiftUI

struct ActivitiesView: View {

//struct activities {
//    let id: Int
//    let name: String
//    let highesttemp: Int
//    let lowesttemp: Int
//}

    let id: Int
       let name: String
       let highesttemp: Int
       let lowesttemp: Int
    
        var body: some View {
        HStack {
                
        Text(name)
        .font(.title3)
                    .bold()
        }
        
       Text ("Activities structure")
        
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView(id: 1, name: "Swimming", highesttemp: 35, lowesttemp: 20)
    }
}
