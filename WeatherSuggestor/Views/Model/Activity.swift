//
//  Activity.swift
//  WeatherSuggestor
//
//  Created by Cooper Lawson on 2023-06-08.
//

import Foundation
import Blackbird

struct Suggestion: BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var highestTemp: Int
    @BlackbirdColumn var lowestTemp: Int
}

let name = "Swim"
let highestTemp = 35
let lowestTemp = 20

let currentSuggestion = Suggestion(id: 1, name: "Swim", highestTemp: 35, lowestTemp: 20)
