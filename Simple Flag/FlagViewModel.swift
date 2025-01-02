//
//  FlagViewModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//
import SwiftUI

func generateCountryFlag(_ countryCode: String) -> String {
    String(String.UnicodeScalarView(countryCode.unicodeScalars.compactMap {
        UnicodeScalar(127397 + $0.value)
    }))
}

func generateCountryNames(_ countryCode: String) -> String {
    let countryName = (Locale.current.localizedString(forRegionCode: countryCode) ?? "")
    return countryName
}

func generateRandomCountryCode() -> String {
    var choice: Int
    choice = Int.random(in: 0...(remainingCountryCodes.count-1))
    return remainingCountryCodes[choice]
}

func updateRemainingCountryCount() {
    var totalRemainingCountries = remainingCountryCodes.count
}

func createCurrentQuizFlagCodes() {
    
}

func clearCurrentQizFlagCodes() {
    currentQuizFlags = []
}

let answer = generateRandomCountryCode()
let country = generateCountryNames(answer)
let flag = generateCountryFlag(answer)
