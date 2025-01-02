//
//  FlagModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import Foundation

var remainingCountryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}

var currentQuizFlags: [String] = []

var numberOfCorrectAnswers: Int = 0

var numberOfWrongAnswers: Int = 0
