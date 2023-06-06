//
//  ListView.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-05.
//

import SwiftUI

struct temperature: Identifiable {
    let id = UUID()
    var temp: String
}



struct ListView: View {
    var body: some View {
        
       Text("Hi")
    }
    
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
