//
//  FlagModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import Foundation

struct QuizFlagData: Identifiable, Codable {
    var id = UUID()
    var flagCountryCode: String = ""
    var flagCountryFlag: String = ""
    var flagCountryName: String = ""
}

struct QuizScoreData: Identifiable, Codable {
    var id = UUID()
    var numberOfCorrectAnswers: Int = 0
    var numberOfWrongAnswers: Int = 0
}






