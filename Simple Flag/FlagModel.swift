//
//  FlagModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import Foundation

let countryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}

var quizChoices: [String] = []
