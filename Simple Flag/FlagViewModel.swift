//
//  FlagViewModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//
import Foundation

final class FlagViewModel: ObservableObject {
    
    @Published var leftAnswer: String = ""
    @Published var leftCountry: String = ""
    @Published var leftFlag: String = ""

    @Published var temporaryFlagCodeIndexes: [Int] = []
    
    @Published var remainingCountryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}

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

    func updateCurrentQuizFlagCodes() {
        currentQuizFlagCodes = []
        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[1]])
        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[2]])
        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[3]])
    }
    
}

