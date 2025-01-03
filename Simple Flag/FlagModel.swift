//
//  FlagModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import SwiftUI

var remainingCountryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}

var totalRemainingCountryCodes: Int = 0

var currentQuizFlagCodeIndexes: [Int] = []

var currentQuizFlagCodes: [String] = []

var numberOfCorrectAnswers: Int = 0

// var numberOfWrongAnswers: Int = 0

