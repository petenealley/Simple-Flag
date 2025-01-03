//
//  FlagViewModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//
import Foundation
import SwiftUI

final class FlagViewModel: ObservableObject {
    
    @Published var leftFlagCode: String = ""
    @Published var centerFlagCode: String = ""
    @Published var rightFlagCode: String = ""
    
    @Published var leftFlag: String = ""
    @Published var centerFlag: String = ""
    @Published var rightFlag: String = ""
    
    @Published var leftName: String = ""
    @Published var centerName: String = ""
    @Published var rightName: String = ""
    
    private var remainingCountryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}
    private var gameOver: Bool = false
    
    private var totalRemainingCountries: Int = 0
    private var currentQuizFlagCodesIndexes: [Int] = []
    private var currentQuizFlagCodes: [String] = []
    
    
    func updateQuizFlagData() {
        totalRemainingCountries = remainingCountryCodes.count
        currentQuizFlagCodesIndexes = populateQuizFlagCodesIndexArray(maxNumber: totalRemainingCountries)
        currentQuizFlagCodes = [remainingCountryCodes[currentQuizFlagCodesIndexes[1]],
                                remainingCountryCodes[currentQuizFlagCodesIndexes[2]],
                                remainingCountryCodes[currentQuizFlagCodesIndexes[3]]
        ]
        
        leftFlagCode = currentQuizFlagCodes[1]
        leftFlag = generateCountryFlag(currentQuizFlagCodes[1])
        leftName = generateCountryNames(currentQuizFlagCodes[1])
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
    //
    //    func generateRandomCountryCode() -> String {
    //        var choice: Int
    //        choice = Int.random(in: 0...(remainingCountryCodes.count-1))
    //        return remainingCountryCodes[choice]
    //    }
    //
    //    func updateRemainingCountryCount() -> Int {
    //        return remainingCountryCodes.count-1
    //    }
    //
    //    func updateCurrentQuizFlagCodes() {
    //        currentQuizFlagCodes = []
    //        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[1]])
    //        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[2]])
    //        currentQuizFlagCodes.append(remainingCountryCodes[temporaryFlagCodeIndexes[3]])
    //    }
    //
    //
    func populateQuizFlagCodesIndexArray(maxNumber: Int)-> [Int]{
        guard maxNumber < 3 else { return [] }
        var indexSet = IndexSet(integersIn: 0...3)
        var randomInts = [Int]()
        
        while randomInts.count < maxNumber {
            guard let currentInt = indexSet.integerLessThanOrEqualTo(Int(arc4random_uniform(UInt32(3)))) else {
                continue
            }
            randomInts.append(currentInt)
            indexSet.remove(currentInt)
        }
        return randomInts
    }
}
