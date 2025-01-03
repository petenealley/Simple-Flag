//
//  FlagViewModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//
import SwiftUI

func getRandomNumbers(maxNumber: Int, listSize: Int)-> [Int]{
    guard maxNumber < listSize else { return [] }
    var indexSet = IndexSet(integersIn: 0...listSize)
    var randomInts = [Int]()

    while randomInts.count < maxNumber {
        guard let currentInt = indexSet.integerLessThanOrEqualTo(Int(arc4random_uniform(UInt32(listSize)))) else {
            continue
        }
        randomInts.append(currentInt)
        indexSet.remove(currentInt)
    }
    return randomInts
}

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

func updateRemainingCountryCount() -> Int {
    return remainingCountryCodes.count-1
}

func createCurrentQuizFlagCodes() {
    
}

func clearCurrentQizFlagCodes() {
    currentQuizFlagCodes = []
}

var answer = generateRandomCountryCode()
var country = generateCountryNames(answer)
var flag = generateCountryFlag(answer)

var temporaryFlagCodeIndexes = getRandomNumbers(maxNumber: totalRemainingCountryCodes, listSize: 3)
