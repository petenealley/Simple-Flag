//
//  FlagViewModel.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//
import Foundation

//let countryCodes = Locale.Region.isoRegions.filter {$0.subRegions.isEmpty}.map {$0.identifier}

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
    choice = Int.random(in: 0...(countryCodes.count-1))
    return countryCodes[choice]
}
let answer = generateRandomCountryCode()
let country = generateCountryNames(answer)
let flag = generateCountryFlag(answer)
